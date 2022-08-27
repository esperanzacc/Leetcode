//
//   FindtheTownJudge(997).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if( N == 1) {
        return N
     }
     if(trust.count == 0 || trust[0].count==0){
          return -1;
     }
     var vote = [Int](repeating: 0, count: N)
    for i in 0..<trust.count {
        var trustee = trust[i][0] //someone is a trustee
        var trusted = trust[i][1] // Trusted by someone
        vote[trustee - 1] =  vote[trustee - 1] - 1
        vote[trusted - 1] =  vote[trusted - 1] + 1
    }
    for i in 0..<N{
        if(vote[i] == N-1) {
            return i + 1
        }
    }
    return -1
  }
}
