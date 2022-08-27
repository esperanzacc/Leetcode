//
//  RemoveDuplicatesfromSortedList(83).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil { return head }
    head!.next = deleteDuplicates(head!.next)
    return head!.val == head!.next?.val ? head!.next : head
}
