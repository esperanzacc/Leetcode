//
//  BalancedBinaryTree(110).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        return dfs(root) != -1
    }
    
func dfs(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    let leftHeight = dfs(root.left)
    let rightHeight = dfs(root.right)
    
    if leftHeight == -1 || rightHeight == -1 || abs(leftHeight - rightHeight) > 1 {
        return -1
    }
    
    return max(leftHeight, rightHeight) + 1
}
