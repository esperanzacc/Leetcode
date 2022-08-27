//
//  206_ReverseLinkedList.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-10.
//

import Foundation
//
//  206_ReverseLinkedList.swift
//  SwiftLeetCode
//
//  Created by Esperanza on 2022-08-10.
//


import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

// 1. check head isEmpty or not, if true -> []
// 2. if not, check next isEmpty or not, if true, return the val
// 3. if not, do recursion, check -> next -> next ->next
 
func reverseList(_ head: ListNode?) -> ListNode? {
  var result = ListNode()
  // base case
  guard head?.val != nil else { return result }
  // recursion case
  if head?.next?.val != nil {
//  _ = reverseList(head?.next)
    result = ListNode((head?.next!.val)!, reverseList(head?.next))
  }
//  print(result.val)
//  print(result.next)
  return result
  
}


