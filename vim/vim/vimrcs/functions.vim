function! TrimTrailingSpace()
	%s/\s\+$//e
endfunction

function! SudoSave()
	w !sudo tee % > /dev/null
endfunction


