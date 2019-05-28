//
//  TreeNode.swift
//  BinaryTree
//
//  Created by Gao on 2019/5/13.
//  Copyright © 2019 Youzhipai. All rights reserved.
//

import UIKit

public class TreeNode {
    public var value: Int = 0
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ value: Int) {
        self.value = value;
    }
}
