//
//  SumOfSquareNumbers.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation

func judgeSquareSum(_ c: Int) -> Bool {
  let sqrtC = Int(Double(c).squareRoot()) + 1
  var a = 0
  var b = sqrtC
  while a <= b {
    if a * a + b * b < c {
      a += 1
    } else if a * a + b * b > c {
      b -= 1
    } else {
      return true
    }
  }
  return false
  
}

