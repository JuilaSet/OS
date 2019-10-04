let inActiveColor = "#EEE";
function getColorIdentifier(name){
	return (colorCharMap[name] == undefined ? colorCharMap["default"] : colorCharMap[name]);
}

// 数据层
let canvas;
let w = 37.75 // canvas.width / widthN;
let h = 37.75 // (canvas.height - 50) / heightN;

// 撤销和恢复
let orderlist = new Orderlist();

// grid写入命令列表
function storeGrid(fontGrid){
	let formedGrid = new Array();
	for(let i =0; i < heightN; ++i){
		formedGrid[i] = new Array(widthN);
	}

	// 序列化并存储
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
		formedGrid[i][j] = fontGrid[i][j].format();
	}

	// 存入命令列表
	orderlist.store(formedGrid);
}

// 根据命令列表写入grid
function restore(fontGrid){
	let obj = orderlist.UndoListTop();
	// 序列化并存储
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
		fontGrid[i][j].reformat(obj[i][j]);
	}
}

// 撤销 
function undo(fontGrid){
	if(orderlist.canUndo()){
		orderlist.undo();
		restore(fontGrid);
	}
	applyGrid(fontGrid);
}

// 恢复
function redo(fontGrid){
	if(orderlist.canRedo()){
		orderlist.redo();
		restore(fontGrid);
	}
	applyGrid(fontGrid);
}

function createGrid(){
	let fontGrid = new Array();
	for(let i =0; i < heightN; ++i){
		fontGrid[i] = new Array(widthN);
	}
	initGrid(fontGrid);
	return fontGrid;
}

function initGrid(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j)
			fontGrid[i][j] = {
				state : 0, 
				color : "default",
				rect : null,
				active : function(color="default"){
					this.rect.fill = getColorIdentifier(color).color;
					this.color = color;
					this.state = 1;
				},
				inActive : function(){
					this.rect.fill = inActiveColor;
					this.state = 0;
				},
				applyBlock : function(){
					this.rect.fill = (this.state == 1 ? getColorIdentifier(this.color).color : inActiveColor);
				},
				assgin : function(grid){
					this.state = grid.state;
					this.color = grid.color;
				},
				format: function(){
					let obj = {state: this.state, color: this.color};
					return JSON.stringify(obj);
				},
				reformat: function(format){
					let obj = JSON.parse(format);
					this.state = obj.state;
					this.color = obj.color;
				}
			};
}

function moveLeft(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
		if(j == widthN - 1)
			fontGrid[i][j].assgin({ state: 0, color: "default" });
		else
			fontGrid[i][j].assgin(fontGrid[i][j + 1]);
	}
}

function moveRight(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = widthN - 1; j >= 0; --j){
		if(j == 0)
			fontGrid[i][j].assgin({ state: 0, color: "default" });
		else
			fontGrid[i][j].assgin(fontGrid[i][j - 1]);
	}
}

function moveUp(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
		if(i == heightN - 1)
			fontGrid[i][j].assgin({ state: 0, color: "default" });
		else
			fontGrid[i][j].assgin(fontGrid[i + 1][j]);
	}
}

function moveDown(fontGrid){
	for(let i = heightN - 1; i >= 0; --i)
		for(let j = 0; j < widthN; ++j){
		if(i == 0)
			fontGrid[i][j].assgin({ state: 0, color: "default" });
		else
			fontGrid[i][j].assgin(fontGrid[i - 1][j]);
	}
}

function generateText(showinline = false){
	let string = "";
	for(var i=0; i<heightN; ++i){
		for(var j=0; j<widthN; ++j){
			if(grid[i][j].state == 1){
				string += getColorIdentifier(grid[i][j].color).ch;
			}else{
				string += '.';
			}
		}
		if(showinline)
			string += '\\0';
		else
			string += '\n';
	}
		if(showinline)
			output.innerHTML = string + "\\0";
		else
			output.innerHTML = string;
}

// 根据数据应用到界面
function applyGrid(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
			grid[i][j].applyBlock();
		}
	generateText();
	canvas.redraw();
}

let grid = createGrid();
let domReady = function () {

	let output = document.getElementById("output");
	let canvasSwitcher = document.getElementById("canvasSwitcher");
	let canvasCleaner = document.getElementById("canvasCleaner");
	
	let cinline = document.getElementById("inline");
	let copyer = document.getElementById("copy");
	let colorSelectBoard = document.getElementById("colorSelectBoard");

	let cundo = document.getElementById("undo");
	let credo = document.getElementById("redo");

	let cleft = document.getElementById("cleft");
	let cup = document.getElementById("cup");
	let cright = document.getElementById("cright");
	let cdown = document.getElementById("cdown");

	canvas = oCanvas.create({
		canvas: "#canvas",
		background: inActiveColor
	});
	
	// 画布大小
	canvas.width = w * widthN + 2;
	canvas.height = h * heightN + 2;

	function floorPosition(x, y){
		let pos = {x:0, y:0};
		pos.x = Math.floor(x / w);
		pos.y = Math.floor(y / h);
		return pos;
	}

	function getRectPosition(x, y){
		let pos = floorPosition(x, y);
		let respos = {x:0, y:0};
		respos.x = pos.x * w;
		respos.y = pos.y * h;
		return respos;
	}

	// 外边框
	for(let i = 0; i < heightN; ++i){
		for(let j = 0; j < widthN; ++j){
			let rectangle = canvas.display.rectangle({
				x: 1 + j * w,
				y: 1 + i * h,
				width: w,
				height: h,
				fill: inActiveColor,
				stroke: "outside 1px rgba(0.0, 0.0, 1, 0.5)"
			});

			grid[i][j].rect = rectangle;

			rectangle.bind("mouseenter", function () {
				canvas.mouse.cursor("pointer");
			}).bind("mouseleave", function () {
				canvas.mouse.cursor("default");
			});

			canvas.addChild(rectangle);
		}
	}

	// 控制器
	cinline.onclick = function(){
		generateText(true);
	}
	
	// 向左移动
	cleft.onclick = function(){
		moveLeft(grid);
		storeGrid(grid);
		applyGrid(grid);
	}
	cright.onclick = function(){
		moveRight(grid);
		storeGrid(grid);
		applyGrid(grid);
	}
	cup.onclick = function(){
		moveUp(grid);
		storeGrid(grid);
		applyGrid(grid);
	}
	cdown.onclick = function(){
		moveDown(grid);
		storeGrid(grid);
		applyGrid(grid);
	}

	cundo.onclick = function(){
		undo(grid);
	}

	credo.onclick = function(){
		redo(grid);
	}

	// 复制内容
	copyer.onclick = function(){
		output.select();
		document.execCommand("copy");
	}

	// 切换颜色
	let colorSwitch = "default";
	var cleanMode = false;
	colorSelectBoard.addEventListener('change',function(){
		if(this.value == "clean"){
			cleanMode = true;
		} else {
			cleanMode = false;
		}
		colorSwitch = this.value;
	}, false);

	// 清除内容
	canvasCleaner.onclick = function(){
		for(let i = 0; i < heightN; ++i)
			for(let j = 0; j < widthN; ++j){
				grid[i][j].inActive();
				grid[i][j].applyBlock();
			}
		generateText();
		storeGrid(grid);
	}

	// 最开始时存放状态
	storeGrid(grid);

	// 控制器
	let storePrepare = false;
	canvas.setLoop(function () {
		let pos = floorPosition(canvas.mouse.x, canvas.mouse.y);

		// 点击事件
		if(pos.x < widthN && pos.y < heightN){
			if(canvas.mouse.canvasHovered) {
				if(canvas.mouse.buttonState == "down"){
					if(!cleanMode){
						if(grid[pos.y][pos.x].state == 0 || grid[pos.y][pos.x].color != colorSwitch){
							grid[pos.y][pos.x].active(colorSwitch);
							storePrepare = true;
						}
					}else if(grid[pos.y][pos.x].state == 1){
						grid[pos.y][pos.x].inActive();
						storePrepare = true;
					}
					generateText();
					// applyGrid(grid);
				}

				if(storePrepare && canvas.mouse.buttonState == "up"){
					storeGrid(grid);
					storePrepare = false;
				}
			}
		}
	}).start();
}

// 显示层
oCanvas.domReady(function(){
	domReady();
});