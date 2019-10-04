class Orderlist{

	constructor(option) {
		this._undolist = [];
		this._redolist = [];
	}

	get undolist(){
		return this._undolist;
	}

	get redolist(){
		return this._redolist;
	}

	// 储存行为, 会清空恢复列表
	store(form) {
		this._undolist.push(form);
		this._redolist.splice(0, this._redolist.length);
	}

	// 撤销行为
	undo(){
		if(this._undolist.length != 0){
			this._redolist.push(this.UndoListTop());
			this._undolist.pop();
		}
	}

	// 恢复行为
	redo(){
		if(this._redolist.length != 0){
			this._undolist.push(this.RedoListTop());
			this._redolist.pop();
		}
	}

	// 下一步会撤销的对象
	UndoListTop(){
		if(this._undolist.length != 0)
			return this._undolist[this._undolist.length - 1];
		else
			throw "can't undo";
	}

	// 下一步会恢复的对象
	RedoListTop(){
		if(this._redolist.length != 0)
			return this._redolist[this._redolist.length - 1];
		else
			throw "can't redo";
	}

	// 是否可以撤销
	canUndo(){
		return this._undolist.length > 1;
	}

	// 是否可以恢复
	canRedo(){
		return this._redolist.length > 0;
	}
}



