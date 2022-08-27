//
//  SymmetricTree(101).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    return isMirror(root, root)
}

func isMirror(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
    if p == nil && q == nil { return true }
    if let q = q, let p = p {
        return q.val == p.val && isMirror (q.left, p.right) && isMirror(q.right, p.left)
    }
    return false
}
