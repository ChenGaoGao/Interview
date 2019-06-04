//
//  ViewController.swift
//  Sort
//
//  Created by Gao on 2019/5/28.
//  Copyright © 2019 Youzhipai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        var source = [5, 4, 3, 2, 1, 6, 8, 7, 9]
        var source = [3, 5, 4, 6]
        
//        Sort.bubbleSort(sourceArray: &source)
//        Sort.insertSort(sourceArray: &source)
//        Sort.insertSort1(sourceArray: &source)
//        Sort.simpleSelectionSort(sourceArray: &source)
//        let array = Sort.mergeSort(source)
//        let array = Sort.quicksort(source)
        
//        print(array)
        
        let bounds = self.minMax(array: [8, -6, 2, 109, 3, 71])
        
        print(bounds, bounds.min, bounds.max)
    }
    
    
    
    
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    
    


}

