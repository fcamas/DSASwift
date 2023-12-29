/* Merge Two Sorted Lists

 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.*/

//Time complexity: O(m + n)
//Space complexity: O(1)

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
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
    
}
