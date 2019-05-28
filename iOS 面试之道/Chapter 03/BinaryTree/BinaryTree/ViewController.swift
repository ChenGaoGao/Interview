//
//  ViewController.swift
//  BinaryTree
//
//  Created by Gao on 2019/5/13.
//  Copyright © 2019 Youzhipai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        var rootNode:TreeNode?
        let array = [1, 2, 4, 8, 16, -1, -1, 17, -1, -1, 9, 18, -1, -1, 19, -1, -1,
                     5, 10, 20, -1, -1, 21, -1, -1, 11, 22, -1, -1, 23, -1, -1,
                     3, 6, 12, 24, -1, -1, 25, 26, -1, -1, -1, 13, -1, -1, 7, 14, -1, -1, 15, -1, -1,]
        var index: Int = 0
        
        TreeManager.createBinarryTree(root: &rootNode, listData: array, index: &index)
        
//        let preorder = TreeManager.preorderTraversal(root: rootNode);
//        print(preorder)
        
        let levelOrder = TreeManager.levelOrder(root: rootNode);
        print(levelOrder)
    }
}








// 计算树的最大深度

