//
//  ReverseInteger(7).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-18.
//

import Foundation

func reverse(_ x: Int) -> Int {
   if x == 0 { return 0 }
   
   let sign = x / abs(x) // check it is + or -
   let xString = String(String(abs(x)).reversed())
   
   let result = (Int(xString) ?? 0) * sign
   
   return (result >= Int32.min && result <= Int32.max) ? result : 0
      
}
