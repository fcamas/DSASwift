
/*Linked List Cycle
 Given head, the head of a linked list, determine if the linked list has a cycle in it.

 There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

 Return true if there is a cycle in the linked list. Otherwise, return false.
 */


import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head

    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next

        if slow === fast {
            return true // Cycle detected
        }
    }

    return false // No cycle found
}
