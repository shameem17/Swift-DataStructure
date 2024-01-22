import Foundation

public class Node{
    public var value: Int
    public var next: Node?
    
    public init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
 public var description: String {
 guard let next = next else {
 return "\(value)"
 }
 return "\(value) -> " + String(describing: next) + " "
 }
}
