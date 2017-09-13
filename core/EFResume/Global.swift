
import Foundation

// http://swifter.tips/log/
public func printLog<T>(
    _ message: T,
    file: String = #file,
    method: String = #function,
    line: Int = #line) {
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
}
