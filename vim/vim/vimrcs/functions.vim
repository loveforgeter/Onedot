function TrimTrailingSpace()
	%s/\s\+$//e
:endfunction

function SudoSave()
	w !sudo tee %
:endfunction


