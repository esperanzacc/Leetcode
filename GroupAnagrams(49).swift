//
//  GroupAnagrams(49).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-01.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
  if strs.isEmpty { return  [[String]]() }
  // what is anagrams, when they are sorted, they will be the same, just like
  // "eat" "ate" -> "aet"
  // 1. check the element in array anagrams or not -> sorted each element
  // 2. create one dictionary which means hashtable -> store key and value
  // key: the same result of sorted ; value: the original element in array
  // 3. return dictionary.values

  var dict = [String: [String]]()

  for str in strs {
      let key = String(str.sorted()) //-> "aet"
      dict[key, default: [String]()].append(str)
      // ["aet"] -> "ate", "eat", "tea"
  }

  return Array(dict.values)

}
