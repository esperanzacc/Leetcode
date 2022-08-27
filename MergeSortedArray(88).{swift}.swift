//
//  MergeSortedArray(88).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1
    var j = n - 1
    var k = m + n - 1
    
    while k >= 0 {
        let num1 = i >= 0 ? nums1[i] : Int.min
        let num2 = j >= 0 ? nums2[j] : Int.min
        if num1 >= num2 {
            nums1[k] = num1
            i -= 1
        } else {
            nums1[k] = num2
            j -= 1
        }
        k -= 1
    }
}
