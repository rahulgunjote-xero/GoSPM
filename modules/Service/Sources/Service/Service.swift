import Foundation
import Core

public protocol HelloService {
    func getText() -> String
}

public class HelloServiceImpl: HelloService {

    public init() { }
    public func getText() -> String {
        print("\(Core.hello)")
        return "\(Core.hello), hi"
    }
}

