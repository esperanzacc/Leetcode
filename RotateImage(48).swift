//
//  RotateImage(48).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-18.
//

import Foundation
func rotate(_ matrix: inout [[Int]]) {
  if matrix.isEmpty { return }
  
  // Operation 1: diagonal flip version
  
  let count = matrix.count
  
  for i in 0..<count {
      for j in i..<count {
          let temp = matrix[i][j]
          matrix[i][j] = matrix[j][i]
          matrix[j][i] = temp
      }
  }
  
  // Operation 2: swap the position in each row
  
  for i in 0..<count {
      for j in 0..<count / 2 {
          let temp = matrix[i][j]
          matrix[i][j] = matrix[i][count - 1 - j]
          matrix[i][count - 1 - j] = temp

      }
  }
  
}
