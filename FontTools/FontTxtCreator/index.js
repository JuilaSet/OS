// 数据层
let widthN = 8, heightN = 16;
function createGrid(){
	let fontGrid = new Array();
	for(let i =0; i < heightN; ++i){
		fontGrid[i] = new Array(widthN);
	}

	for(let i = 0; i < heightN; ++i)
		for(let j = 0; j < widthN; ++j)
			fontGrid[i][j] = {
				state : 0, 
				rect : null,
				active : function(){
					this.rect.fill = "#222";
					this.state = 1;
				},
				inActive : function(){
					this.rect.fill = "#CCC";
					this.state = 0;
				}
			};

	return fontGrid;
}

let grid = createGrid();
let canvas;

// 显示层
oCanvas.domReady(function () {

	let output = document.getElementById("output");

	canvas = oCanvas.create({
		canvas: "#canvas",
		background: "#CCC"
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
				fill: "#CCC",
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
	var cleanMode = false;
	let canvas_switcher = canvas.display.rectangle({
		x: 2,
		y: heightN * h + 2,
		width: (w * widthN - 4),
		height: 46,
		fill: "#CFC",
		stroke: "outside 2px rgba(0.0, 0.0, 1, 0.5)"
	});

	let canvas_switcher_textContainer = canvas.display.text({
		x: widthN * w / 2,
		y: heightN * h + 25,
		origin: { x: "center", y: "center" },
		align: "center",
		font: "bold 15px/1.5 sans-serif",
		text: "write mode",
		fill: "#000"
	});

	canvas_switcher.bind("click", function(){
		cleanMode = !cleanMode;
		canvas_switcher.fill = cleanMode ? "#CCF" : "#CFC";
		canvas_switcher_textContainer.text = cleanMode ? "clean mode" : "write mode";
		canvas.redraw();
	});

	function doSubmit(){
		var string = "";
		for(var i=0; i<heightN; ++i){
			for(var j=0; j<widthN; ++j){
				if(grid[i][j].state == 1){
					string += '*';
				}else{
					string += '.';
				}
			}
			string += '\n';
		}
		output.innerHTML = "结果: \n" + string;
	}

	canvas.addChild(canvas_switcher);
	canvas.addChild(canvas_switcher_textContainer);

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
						if(grid[pos.y][pos.x].state == 0){
							grid[pos.y][pos.x].active();
						}
					}else if(grid[pos.y][pos.x].state == 1){
						grid[pos.y][pos.x].inActive();
					}
					doSubmit();
				}
			}
		}
	}).start();
});