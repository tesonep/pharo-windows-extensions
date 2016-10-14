as yet unclassified
messageBox:hwnd text:text caption:caption type: type
	| textWide captionWide | 	
	
	captionWide := Kernel32Lib uniqueInstance stringToWideChar: caption.
	textWide := Kernel32Lib uniqueInstance stringToWideChar: text.
	
	^self ffiMessageBoxUnicode: hwnd text:textWide  caption: captionWide type: type.  