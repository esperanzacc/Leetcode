//
//  DeleteNodeInALinkedList(237).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-20.
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


func deleteNode(_ node: ListNode?) {
    // can not be a tail node
    guard let nextNode = node?.next else { return }
    
    node?.val = nextNode.val
    node?.next = nextNode.next
    
}
