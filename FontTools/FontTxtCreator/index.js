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

	"default" : {
		index : -1,
		ch: "*",
		color : "#000000"
	}
};

function getColorIdentifier(name){
	return (colorCharMap[name] == undefined ? colorCharMap["default"] : colorCharMap[name]);
}

// 数据层
let widthN = 8, heightN = 16;
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
					this.rect.fill = "#FFF";
					this.state = 0;
				},
				applyBlock : function(){
					this.rect.fill = (this.state == 1 ? "#222" : "#FFF");
				}
			};
}

let grid = createGrid();
let canvas;

// 显示层
oCanvas.domReady(function () {

	let output = document.getElementById("output");
	let canvasSwitcher = document.getElementById("canvasSwitcher");
	let canvasCleaner = document.getElementById("canvasCleaner");
	let colorSelectBoard = document.getElementById("colorSelectBoard");

	canvas = oCanvas.create({
		canvas: "#canvas",
		background: "#FFF"
	});

	let w = canvas.width / widthN;
	let h = (canvas.height - 50) / heightN;

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
				fill: "#FFF",
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

	// 清除内容
	canvasCleaner.onclick = function(){
		for(let i = 0; i < heightN; ++i)
			for(let j = 0; j < widthN; ++j){
				grid[i][j].inActive();
				grid[i][j].applyBlock();
			}
		generatrText();
	}

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
		output.innerHTML = "结果: \n" + string;
	}

	/*let textContainer = canvas.display.text({
		x: 157,
		y: 196,
		origin: { x: "center", y: "center" },
		align: "center",
		font: "bold 25px/1.5 sans-serif",
		text: "(0, 0)",
		fill: "#FFF"
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
				}
			}
		}
	}).start();
});