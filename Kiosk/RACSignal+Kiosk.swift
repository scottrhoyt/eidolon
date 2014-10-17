
extension RACSignal {
    func mapNilToEmptyString() -> RACSignal {
        return map { (string) -> AnyObject! in
            if let string = string as? String {
                return string
            } else {
                return ""
            }
        }
    }
    
    func mapNilToEmptyAttributedString() -> RACSignal {
        return map { (string) -> AnyObject! in
            if let string = string as? NSAttributedString {
                return string
            } else {
                return NSAttributedString()
            }
        }
    }

}