//
//  PowerofTwo(231).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
       // base case
        if n == 1 {
            return true
        }
        
        // recursive case
        
        if ( n != 0 && n % 2 == 0 ) {
            return isPowerOfTwo( n / 2 )
        }
        
        return false
    
    }
}
