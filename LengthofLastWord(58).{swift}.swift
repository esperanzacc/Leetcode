//
//  LengthofLastWord(58).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func lengthOfLastWord(_ s: String) -> Int {
  guard s.count > 0 else { return 0 }
  let words = s.split(separator: " ")
  guard words.count > 0 else { return 0 }
  return words[words.count-1].count
}
