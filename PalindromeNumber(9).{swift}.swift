//
//  PalindromeNumber(9).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func isPalindrome(_ x: Int) -> Bool {
        return x == Int(String(String(x).reversed()))
}

