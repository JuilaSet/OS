// 颜色JSON
let colorCharMap = {
	"black" : {
		index : 0,
		ch: "*",
		color : "#000000"
	},
	
	"red" : {
		index : 1,
		ch: "r",
		color : "#FF0000"
	},
	
	"green" : {
		index : 2,
		ch: "g",
		color : "#00ff00"
	},
	
	"yellow" : {
		index : 3,
		ch: "y",
		color : "#ffff00"
	},
	
	"blue" : {
		index : 4,
		ch: "b",
		color : "#0000FF"
	},
	
	"purpose" : {
		index : 5,
		ch: "p",
		color : "#ff00ff"
	},
	
	"light" : {
		index : 6,
		ch: "l",
		color : "#00ffff"
	},
	
	"white" : {
		index : 7,
		ch: "w",
		color : "#ffffff"
	},
	
	"grey" : {
		index : 8,
		ch: "-",
		color : "#c6c6c6"
	},
	
	"drakred" : {
		index : 9,
		ch: "R",
		color : "#840000"
	},
	
	"drakgreen" : {
		index : 10,
		ch: "G",
		color : "#008400"
	},
	
	"drakyellow" : {
		index : 11,
		ch: "Y",
		color : "#848400"
	},
	
	"drakblue" : {
		index : 12,
		ch: "B",
		color : "#000084"
	},
	
	"drakpurpos" : {
		index : 13,
		ch: "P",
		color : "#840084"
	},
	
	"slate" : {
		index : 14,
		ch: "s",
		color : "#008484"
	},
	
	"drakgrey" : {
		index : 15,
		ch: "=",
		color : "#848484"
	},

	"default" : {
		index : -1,
		ch: "*",
		color : "#000000"
	}
};

let inActiveColor = "#EEE";
function getColorIdentifier(name){
	return (colorCharMap[name] == undefined ? colorCharMap["default"] : colorCharMap[name]);
}

// 数据层
let widthN = 8, heightN = 16;
let canvas;
let w = 37.75 // canvas.width / widthN;
let h = 37.75 // (canvas.height - 50) / heightN;

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

function generatrText(){
	let string = "";
	for(var i=0; i<heightN; ++i){
		for(var j=0; j<widthN; ++j){
			if(grid[i][j].state == 1){
				string += getColorIdentifier(grid[i][j].color).ch;
			}else{
				string += '.';
			}
		}
		string += '\n';
	}
	output.innerHTML = string;
}

// 根据数据应用到界面
function applyGrid(fontGrid){
	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j){
			grid[i][j].applyBlock();
		}
	generatrText();
	canvas.redraw();
}

let grid = createGrid();

// 显示层
oCanvas.domReady(function () {

	let output = document.getElementById("output");
	let canvasSwitcher = document.getElementById("canvasSwitcher");
	let canvasCleaner = document.getElementById("canvasCleaner");
	
	let copyer = document.getElementById("copy");
	let colorSelectBoard = document.getElementById("colorSelectBoard");

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

	// 向左移动
	cleft.onclick = function(){
		moveLeft(grid);
		applyGrid(grid);
	}
	cright.onclick = function(){
		moveRight(grid);
		applyGrid(grid);
	}
	cup.onclick = function(){
		moveUp(grid);
		applyGrid(grid);
	}
	cdown.onclick = function(){
		moveDown(grid);
		applyGrid(grid);
	}

	// 复制内容
	copyer.onclick = function(){
		output.select();
		document.execCommand("copy");
	}

	// 清除内容
	canvasCleaner.onclick = function(){
		for(let i = 0; i < heightN; ++i)
			for(let j = 0; j < widthN; ++j){
				grid[i][j].inActive();
				grid[i][j].applyBlock();
			}
		generatrText();
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

	/*let textContainer = canvas.display.text({
		x: 157,
		y: 196,
		origin: { x: "center", y: "center" },
		align: "center",
		font: "bold 25px/1.5 sans-serif",
		text: "(0, 0)",
		fill: inActiveColor
	});*/

	// canvas.addChild(textContainer);

	// 控制器
	canvas.setLoop(function () {
		let pos = floorPosition(canvas.mouse.x, canvas.mouse.y);
		// textContainer.text = "(" + pos.x + ", " + pos.y + ")";

		// 点击事件
		if(pos.x < widthN && pos.y < heightN){
			if(canvas.mouse.canvasHovered) {
				if(canvas.mouse.buttonState == "down"){
					if(!cleanMode){
						if(grid[pos.y][pos.x].state == 0 || grid[pos.y][pos.x].color != colorSwitch){
							grid[pos.y][pos.x].active(colorSwitch);
						}
					}else if(grid[pos.y][pos.x].state == 1){
						grid[pos.y][pos.x].inActive();
					}
					generatrText();
					// applyGrid(grid);
				}
			}
		}
	}).start();
});