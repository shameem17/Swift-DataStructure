import Cocoa

//linked List

 let node1 = Node(value: 1)
 let node2 = Node(value: 2)
 let node3 = Node(value: 3)

 node1.next = node2
 node2.next = node3

 print(node1)

var linkedList = LinkedList()

linkedList.head = node1
linkedList.tail = node3

print(linkedList)

//push
var list = LinkedList()

list.push(32)
list.push(21)
list.push(3)

print("After push operation: ", list)
//append
list.append(90)
list.append(-32)

print("after append operation: ", list)

//insert
//insert first
list.insert(-1, at: 0)
print(list)

//insert last
list.insert(-2, at: 6)
print(list)

//insert random
list.insert(-3, at: 2)
print(list)

list.insert(-4, at: 1)
print(list)

print(list.pop() ?? 0)
print(list)

var newList = LinkedList()

newList.push(2)
newList.push(1)

print(newList)
newList.pop()
newList.pop()
newList.pop()

//remove last

list.removeLast()
print(list)

newList.push(34)
newList.push(43)
newList.removeLast()
print(newList)

list.remove(index: 0)
print(list)

list.remove(index: 2)
print(list)

list.remove(index: 4)
print(list)
