extension String {
    /**
         UTF8 Array representation of string
    */
    public func makeBytes() -> Bytes {
        var retVal : [Byte] = []
        for thing in self.utf8 {
            retVal.append(Byte(thing))
        }
        return retVal
    }

    /**
         Initializes a string with a UTF8 byte array
    */
    public init(bytes: Bytes) {
        self = bytes.makeString()
    }
}
