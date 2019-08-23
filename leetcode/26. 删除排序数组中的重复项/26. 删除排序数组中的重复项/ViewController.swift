//
//  ViewController.swift
//  26. 删除排序数组中的重复项
//
//  Created by 王鹏 on 2019/8/23.
//  Copyright © 2019 XI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var array = [1,1,2,12,3,4,1,2,11,1,1,2,2]
        
        print(removeDuplicates(&array))
    }
    
    func removeDuplicates2(_ nums: inout [Int]) -> Int {
        var i = 0
        var j = 0
        
        while i < nums.count {
            
            j = i + 1
            
            let a = nums[i]
            
            while j < nums.count {
                
                let b = nums[j]
                
                if a == b {
                    nums.remove(at: j)
                    
                    j = j - 1
                }
                
                j = j + 1
                
            }
            
            i = i + 1
        }
        
        print("end nums = \(nums)")
        return nums.count
    }
    
    //    [1,1,2,12,3,4,1,2,11,1,1,2,2]
    // leetcode
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        
        var i = 0
        var j = 1
        
        nums.sort { (num1, num2) -> Bool in
            return num1 < num2
        }
        
        while j < nums.count {
            
            if nums[i] != nums[j] {
                i = i + 1
                nums[i] = nums[j]
            }
            
            
            j = j + 1
        }
        
        
        
        return i + 1
    }
}

