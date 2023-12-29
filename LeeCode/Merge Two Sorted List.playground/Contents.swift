/* Merge Two Sorted Lists

 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.*/

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    // Dummy node to simplify code
    let dummy = ListNode(0)
    var current: ListNode? = dummy
    var l1 = list1
    var l2 = list2
    
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            current?.next = l1
            l1 = l1?.next
        } else {
            current?.next = l2
            l2 = l2?.next
        }
        current = current?.next
    }
    
    // If one list is longer than the other
    if l1 != nil {
        current?.next = l1
    } else {
        current?.next = l2
    }
    
    return dummy.next
}

// Example usage:
// Assume list1 and list2 are already sorted linked lists
let list1 = ListNode(1)
list1.next = ListNode(3)
list1.next?.next = ListNode(5)

let list2 = ListNode(2)
list2.next = ListNode(4)
list2.next?.next = ListNode(6)

let mergedList = mergeTwoLists(list1, list2)

// Print the merged list values
var current: ListNode? = mergedList
while current != nil {
    print(current!.val)
    current = current?.next
}

