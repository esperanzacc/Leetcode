//
//  DesignCircularQueue(622).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation

class MyCircularQueue {
    private var queue : [Int]
    private var frontIndex: Int = 0
    private var rearIndex: Int = 0
    private var length: Int
    private var capacity: Int

    init(_ k: Int) {
        // intialize the size of array
        queue = Array(repeating: 0 , count: k)
        length = k
        capacity = 0
    }
    
    func enQueue(_ value: Int) -> Bool {
        // check Queue is full or not
        guard !isFull() else { return false }
        // enQueue
        // rear will be the next position of last number
        queue[rearIndex] = value
        rearIndex = (rearIndex + 1) % length
        capacity += 1
        return true
    }
    
    func deQueue() -> Bool {
        // check Queue is Empty or not
        guard !isEmpty() else { return false }
        frontIndex = (frontIndex + 1) % length
        capacity -= 1
        return true
        
    }
    
    func Front() -> Int {
        guard !isEmpty() else { return -1 }
        return queue[frontIndex]
        
    }
    
    func Rear() -> Int {
        guard !isEmpty() else { return -1 }
        return queue[(rearIndex - 1 + length) % length ]
        
        
    }
    
    func isEmpty() -> Bool {
        return capacity == 0
        
    }
    
    func isFull() -> Bool {
       return capacity == length
        
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
