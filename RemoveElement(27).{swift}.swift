//
//  RemoveElement(27).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums.removeAll(where : { $0 == val })
    return nums.count
}
