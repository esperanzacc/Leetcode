//
//  CourseSchedule(207).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation
class Solution {
    public final class Queue<E>: Sequence {
  // beginning of Queue
  private var first: Node<E>? = nil
  // last of Queue
  private var last: Node<E>? = nil
  
  // number of items in Queue
  private(set) var count: Int = 0
 
  // helper linked list node class
  fileprivate class Node<E> {
    fileprivate var item: E
    fileprivate var next: Node<E>?
    fileprivate init(item: E, next: Node<E>? = nil) {
      self.item = item
      self.next = next
    }
  }
  
  // initializes an empty Queue
  public init() {}
  
  public func peek() -> E? {
    return first?.item
  }
  
  // add an item
  public func enqueue(item: E) {
    let oldLast = last
    last = Node(item: item, next: nil)
    if isEmpty() { first = last }
    else { oldLast?.next = last }
    count += 1
  }
  
  public func dequeue() -> E? {
    if let item = first?.item {
      first = first?.next
      count -= 1
      
      if isEmpty() { last = nil }
      return item
    }
    return nil
  }
      
  public func isEmpty() -> Bool {
    return count == 0
  }
  
  // returns an iterator
  public struct QueueIterator<E>: IteratorProtocol {
    private var current: Node<E>?
    
    fileprivate init(_ first: Node<E>?) {
      self.current = first
    }
    public mutating func next() -> E? {
      // if there is an item
      if let item = current?.item {
        current = current?.next
        return item
      }
      return nil
    }
  }
  
  public func makeIterator() -> QueueIterator<E> {
    return QueueIterator<E>(first)
  }
}

   func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
  
  var adj = [[Int]](repeating: [Int](), count: numCourses)
  print(adj)
  var indegrees = [Int](repeating: 0, count: numCourses)
  print(indegrees)

  for i in 0..<prerequisites.count {
    let u = prerequisites[i][0]
//    print(u)
    let v = prerequisites[i][1]
//    print(v)
  
    adj[u].append(v)
    indegrees[v] += 1
  }
  
  // Topological Sort - using BFS
  let q = Queue<Int>()
  // checking the intial state
//  print("want to print q")
  for v in 0..<numCourses {
//    print(v)
    if indegrees[v] == 0 {
//      print(v)
      q.enqueue(item: v)
      print(q)
    }
  }

  // BFS
  var count = numCourses
  
  while !q.isEmpty() {
    let u = q.dequeue()!
    count -= 1
    print("u is \(u)")
    
    for v in adj[u] {
//      print(prerequisites[u])
      indegrees[v] -= 1
      if indegrees[v] == 0 {
        q.enqueue(item: v)
      }
    }
  }
  
  return count == 0 ? true : false
  
}
}
