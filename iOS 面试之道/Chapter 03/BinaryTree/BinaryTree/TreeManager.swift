//
//  TreeManager.swift
//  BinaryTree
//
//  Created by Gao on 2019/5/13.
//  Copyright © 2019 Youzhipai. All rights reserved.
//

import UIKit

class TreeManager: NSObject {
    
    /// 创建二叉树
    ///
    /// - Parameters:
    ///   - root: 主节点
    ///   - listData: 数据
    ///   - index: 索引值
    class func createBinarryTree(root:inout TreeNode?, listData:[Int], index:inout Int) -> Void {
        if index >= listData.count {
            return
        }
        
        let data: Int = listData[index] as Int
        index += 1;
        
        if data == -1 {
            root = nil
            return;
        }
        root = TreeNode(data)
        createBinarryTree(root: &root!.left, listData: listData, index: &index)
        createBinarryTree(root: &root!.right, listData: listData, index: &index)
    }
    
    
    
    // 用栈实现的前序遍历
    class func preorderTraversal(root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var node = root
        
        while !stack.isEmpty || node != nil {
            if node != nil {
                res.append(node!.value)
                stack.append(node!)
                node = node!.left
            } else {
                node = stack.removeLast().right
            }
        }
        
        return res
    }
    
    
    
    class func levelOrder(root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        // 用数组来实现队列
        var queue = [TreeNode]()
        
        if let root = root {
            queue.append(root)
        }
        
        while queue.count > 0 {
            let size = queue.count
            var level = [Int]()
            
            for _ in 0 ..< size {
                let node = queue.removeFirst()
                
                level.append(node.value)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.append(level)
        }
        
        return res
    }
    
    
    
    
    // 获取 TableView 展示二叉树的 datasource
    class func levelOrder2(root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        // 用数组来实现队列
        var queue = [TreeNode]()
        
        if let root = root {
            queue.append(root)
        }
        
        while queue.count > 0 {
            let size = queue.count

            for _ in 0 ..< size {
                var level = [Int]()
                
                let node = queue.removeFirst()
                
                level.append(node.value)
                if let left = node.left {
                    queue.append(left)
                    level.append(left.value)
                }
                else {
                    level.append(-1)
                }
                
                if let right = node.right {
                    queue.append(right)
                    level.append(right.value)
                }
                else {
                    level.append(-1)
                }
                
                res.append(level)
            }
        }
        
        return res
    }
}
