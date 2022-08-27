//
//  LinkedListCycle(141).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    
    // Floyd's cycle detection algorithm
    // 1st part: to prove that it has a cycle
    
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil { return false }
        
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                return true
            }
        }
        
        return false
    }
}
