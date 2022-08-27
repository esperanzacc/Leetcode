//
//  FibonacciNumber(509).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation

func fib(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }
    
    var dp = [Int](repeating:0, count: n + 1)
    dp[0] = 0
    dp[1] = 1
    
    for i in 2...n {
        dp[i] = dp[i - 1] + dp[i - 2]
    }
    
    return dp[n]
}

