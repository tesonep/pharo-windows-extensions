as yet unclassified
utf8StringToWideChar: anUTF8String
	| r wideStrByteArray |

	wideStrByteArray := ByteArray new: (anUTF8String size + 1) * 2.

	r := self
		ffiMultiByteToWideCharacterCodepage: 65001
		flags: 0
		input: anUTF8String
		inputLen: anUTF8String size + 1
		output: wideStrByteArray
		outputLen: wideStrByteArray size + 1.
		
	r = 0 ifTrue:[ self reportLastError:'utf8StringToWideChar' ]. 
	^ wideStrByteArray 