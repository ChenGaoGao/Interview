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
    
    
    
    
    
    // 归并排序
    class func mergeSort(_ array: [Int]) -> [Int] {
        var helper = Array(repeating: 0, count: array.count)
        var array = array
        mergeSort(&array, &helper, 0, array.count - 1)
        return array
    }
    
    class func mergeSort(_ array:inout [Int],_ helper:inout [Int], _ low: Int, _ high: Int) {
        guard low < high else {
            return
        }
        
        let middle = (high - low) / 2 + low
        print(low, middle)
        mergeSort(&array, &helper, low, middle)
        mergeSort(&array, &helper, middle + 1, high)
        merge(&array, &helper, low, middle, high)
    }
    
    class func merge(_ array:inout [Int],_ helper:inout [Int], _ low: Int, _ middle: Int, _ high: Int) {
        // copy both halves into a helper array
        print("ll", low, middle, high)
        for i in low ... high {
            helper[i] = array[i]
        }
        
        var helperLeft = low, helperRight = middle + 1
        var current = low
        
        // iterate through helper array and copy the right one to original array
        while helperLeft <= middle && helperRight <= high {
            print(helper, array)
            if helper[helperLeft] <= helper[helperRight] {
                array[current] = helper[helperLeft]
                helperLeft += 1
            } else {
                array[current] = helper[helperRight]
                helperRight += 1
            }
            current += 1
            print(helper, array)
        }
        
        // handle the rest
        print("mmm", middle, helperLeft)
        guard middle - helperLeft >= 0 else {
            return
        }
        for i in 0 ... middle - helperLeft {
            print(i, current)
            array[current + i] = helper[helperLeft + i]
        }
    }
    
    
    
    
    
    // 快速排序
    class func quicksort(_ array:[Int]) -> [Int] {
        print(array)
        guard array.count > 1 else {
            return array
        }
        let pivot = array[array.count / 2]
        let left = array.filter { $0 < pivot }
        let middle = array.filter { $0 == pivot }
        let right = array.filter { $0 > pivot }
        
        
        
        return quicksort(left) + middle + quicksort(right)
    }
}
