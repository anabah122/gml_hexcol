


function color_from_hex(str){
	str = string_replace(str,"#","")
	var r = real( @"0x"+string_char_at(str,1)+string_char_at(str,2) )
	var g = real( @"0x"+string_char_at(str,3)+string_char_at(str,4) )
	var b = real( @"0x"+string_char_at(str,5)+string_char_at(str,6) )	
	
	return make_color_rgb(r,g,b)
}




function hex_from_color( col ){
	
	var rgbval_to_hex = function( n )
	{
		var res = ""; var dig = "0123456789ABCDEF"; 
	
		while true
		{
			var d = n / 16;  n = d div 1; 
			var ch = string_char_at(dig,frac( d )*16+1)
		
			res=string_insert(ch,res,0)
			if(!n) break
		}
	
		return res
	}
	
	var r = color_get_red(col)
	var g = color_get_green(col)
	var b = color_get_blue(col)
	
	return rgbval_to_hex(r*65536+g*256+b)
}