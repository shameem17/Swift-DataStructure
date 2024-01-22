import Foundation

public class LinkedList{
    public var head: Node?
    public var tail: Node?
    
    public init(head: Node? = nil, tail: Node? = nil) {
        self.head = head
        self.tail = tail
    }
    
    public var isEmpty: Bool{
        return head == nil
    }
    
    //push
    public func push(_ value: Int){
        head = Node(value: value, next: head)
        if tail == nil{
            tail = head
        }
    }
    
    //append: insert at the end
    public func append(_ value: Int){
        
        //1. if the list is empty
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        
        tail = tail!.next
    }
    //insert at: position(index)
    public func insert(_ value: Int, at: Int){
        
        //insert first
        guard at != 0 else {
            push(value)
            return
        }
        guard !isEmpty else{
            push(value)
            return
        }
        
        var currentIndex: Int = 0
        var currentNode = head
        var previousNode: Node?
        while currentNode != nil && currentIndex < at {
            currentIndex += 1
            previousNode = currentNode
            currentNode = currentNode!.next
        }
        
        //insert last
        guard previousNode!.next != nil else{
            append(value)
            return
        }
        
        //random insert
        
        let tempNode = Node(value: value)
        previousNode!.next = tempNode
        tempNode.next = currentNode
    }
    
    //pop: return the first element and delete it
    @discardableResult //for ignoring the return value
    public func pop() -> Int? {
        
        guard !isEmpty else {
            print("Empty List")
            return -1
        }
        //defer runs at the end of the excuting block
        defer{
            head = head!.next
            
            if isEmpty{
                tail = nil
            }
        }
        return head?.value
    }
    
    public func removeLast() {
        
        guard !isEmpty else{
            return
        }
        guard head!.next != nil else{
            head = nil
            return
        }
        
        var previousNode: Node? = nil
        var currentNode = head
        while  currentNode!.next != nil {
            previousNode = currentNode
            currentNode = currentNode!.next
        }
        
        previousNode!.next = nil
        tail = previousNode
    }
    
    //remove: (index)
    public func remove(index: Int){
        
        guard !isEmpty else {
            return
        }
        
        guard index != 0 else{
            head = head!.next
            return
        }
        
        var previousNode: Node?
        var currentNode = head
        var currentIndex: Int = 0
        while currentNode!.next != nil && currentIndex < index {
            previousNode = currentNode
            currentNode = currentNode!.next
            currentIndex += 1
        }
        previousNode!.next = currentNode!.next
    }
}

extension LinkedList: CustomStringConvertible{
    
    public var description: String{
        guard let head = head else{
            //print("")
            return ""
        }
        return String(describing: head)
    }
}
