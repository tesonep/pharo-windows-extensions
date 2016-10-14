as yet unclassified
stringToWideChar: anString
	| anUTF8String utf8Encoder |
	utf8Encoder := TextConverter newForEncoding: 'utf8'.
	anUTF8String := (utf8Encoder convertToSystemString: anString).
	
	^ self utf8StringToWideChar: anUTF8String.