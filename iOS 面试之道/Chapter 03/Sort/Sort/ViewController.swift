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
        
        var source = [4, 5, 3, 1, 2]
        
//        Sort.bubbleSort(sourceArray: &source)
//        Sort.insertSort(sourceArray: &source)
//        Sort.insertSort1(sourceArray: &source)
        Sort.simpleSelectionSort(sourceArray: &source)
        
        print(source)
        
    }


}

