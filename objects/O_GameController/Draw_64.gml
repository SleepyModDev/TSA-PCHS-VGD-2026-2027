var _FailuresLeft = 0
	for (var i = 0; i < 3; ++i) 
	{
	    if !array_get(global.ClearedPuzzlesArea1Array,i) {_FailuresLeft++}
	}
	draw_set_font(Font1)
draw_text(16, 16,string_concat("Repairs Left : ",string(_FailuresLeft)))