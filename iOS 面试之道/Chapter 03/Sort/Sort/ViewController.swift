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
        let array = Sort.mergeSort(source)
        
        print(array)
        
    }


}

