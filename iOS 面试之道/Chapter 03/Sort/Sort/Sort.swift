//
//  Sort.swift
//  Sort
//
//  Created by Gao on 2019/5/30.
//  Copyright © 2019 Youzhipai. All rights reserved.
//

import UIKit

class Sort {
    
    
    /// 冒泡排序
    /// 它重复地走访过要排序的数列，一次比较两个元素，
    /// 如果它们的顺序错误就把它们交换过来。
    /// 走访数列的工作是重复地进行直到没有再需要交换，
    /// 也就是说该数列已经排序完成。
    ///
    /// - Parameter sourceArray: 待排序数组
    class func bubbleSort(sourceArray: inout [Int]) {
        if sourceArray.count <= 1 {
            return
        }
        
        for i in 0..<sourceArray.count - 1 {
            for j in 0..<sourceArray.count - i - 1 {
                print(i, j, ": ", sourceArray)
                if sourceArray[j] > sourceArray[j + 1] {
                    let temp = sourceArray[j]
                    sourceArray[j] = sourceArray[j + 1]
                    sourceArray[j + 1] = temp
                }
            }
        }
    }
    
    
    
    
    
    /// 插入排序
    /// 每插入一个数都要将它和之前的已经完成排序的序列进行重新排序，
    /// 也就是要找到新插入的数对应原序列中的位置。
    ///
    /// - Parameter sourceArray: 待排序数组
    class func insertSort(sourceArray: inout [Int]) {
        if sourceArray.count <= 1 {
            return
        }
        
        for i in 0..<sourceArray.count {
            var j = i
            while j > 0 && sourceArray[j] < sourceArray[j - 1] {
                print(i, j, ": ", sourceArray)
                let temp = sourceArray[j]
                sourceArray[j] = sourceArray[j - 1]
                sourceArray[j - 1] = temp
                
                j -= 1
            }
        }
    }
    
    // 减少交换的 插入排序
    class func insertSort1(sourceArray: inout [Int]) {
        if sourceArray.count <= 1 {
            return
        }
        
        for i in 0..<sourceArray.count {
            var j = i
            let temp = sourceArray[j]
            while j > 0 && temp < sourceArray[j - 1] {
                print(i, j, ": ", sourceArray)
                sourceArray[j] = sourceArray[j - 1]
                j -= 1
            }
            sourceArray[j] = temp
        }
    }

    
    
    

    /// 简单选择排序
    /// 每一趟从待排序的记录中选出最小的元素，
    /// 顺序放在已排好序的序列最后，
    /// 直到全部记录排序完毕
    ///
    /// - Parameter sourceArray: 待排序数组
    class func simpleSelectionSort(sourceArray: inout [Int]) {
        if sourceArray.count <= 1 {
            return
        }
        
        for i in 0..<sourceArray.count {
            var tempIndex = i
            for j in i..<sourceArray.count {
                if sourceArray[j] < sourceArray[tempIndex] {
                    tempIndex = j
                }
            }
            if tempIndex == i {
                continue
            }
            let temp = sourceArray[i]
            sourceArray[i] = sourceArray[tempIndex]
            sourceArray[tempIndex] = temp
        }
    }
}
