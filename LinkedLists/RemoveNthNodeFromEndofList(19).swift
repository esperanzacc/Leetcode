//
//  RemoveNthNodeFromEndofList.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-23.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard let head = head else { return nil }
    
    var dummyNode = ListNode(0)
    var slow : ListNode? = dummyNode
    var fast : ListNode? = dummyNode
    
    dummyNode.next = head
    
    
    // start point
    for _ in 0...n {
        fast = fast?.next
    }
    
    // loop
    while (fast != nil) {
        fast = fast?.next
        slow = slow?.next
    }
    
    slow?.next = slow?.next?.next
    return dummyNode.next
    
}
