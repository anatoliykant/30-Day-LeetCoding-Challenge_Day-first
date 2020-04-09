/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day eighth (Weak 2 Day first)
//
// https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3290/
//
//    Middle of the Linked List
//
//    Given a non-empty, singly linked list with head node head, return a middle node of linked list.
//
//    If there are two middle nodes, return the second middle node.
//
//    Example 1:
//
//    Input: [1,2,3,4,5]
//    Output: Node 3 from this list (Serialization: [3,4,5])
//    The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
//    Note that we returned a ListNode object ans, such that:
//    ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
//    Example 2:
//
//    Input: [1,2,3,4,5,6]
//    Output: Node 4 from this list (Serialization: [4,5,6])
//    Since the list has two middle nodes with values 3 and 4, we return the second one.
//
//    Note:
//
//    The number of nodes in the given list will be between 1 and 100.


// Definition for singly-linked list.
class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func createNode(from array: [Int]) -> ListNode? {
    
    var node: ListNode?
    
    for (index, element) in array.reversed().enumerated() {
        if index == 0 {
            node = ListNode(element)
        } else {
            let newNode = ListNode(element)
            newNode.next = node
            node = newNode
        }
    }
    
    return node
}

let arr1 = [1, 2, 3, 4, 5]      // result [3,4,5]
let arr2 = [1, 2, 3, 4, 5, 6]   // result [4,5,6]

dump(Solution().middleNode(createNode(from: arr2)))

// First solution with two loops (while, for) - O(n)

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        guard head?.next != nil else { return head }
        
        var list = head
        var list2 = head
        var counter = 0
        
        while list?.next != nil {
            counter += 1
            list = list?.next
        }
        
        let middle = ((counter + 1) / 2) + 1
        
        for _ in 1..<middle {
            list2 = list2?.next
        }
        
        return list2
    }
}

// Second solution with one while loop - O(n)

class Solution2 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        guard head?.next != nil else { return head }
        
        var slowIndex = head
        var fastIndex = head
        
        while fastIndex != nil, fastIndex?.next != nil {
            slowIndex = slowIndex?.next
            fastIndex = fastIndex?.next?.next
        }
        return slowIndex
    }
}
