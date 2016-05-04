//
//  GraphBrain.swift
//  Challenges
//
//  Created by Jon Thornburg on 5/4/16.
//  Copyright © 2016 Jon Thornburg. All rights reserved.
//

import Foundation

public struct GraphBrain {
    
    func arrayToDictionary(arr: [Int]) -> [Int : Int] {
        var dict = [Int : Int]()
        
        for num in arr {
            if dict[num] != nil {
                dict[num]!++
            } else {
                dict[num] = 1
            }
        }
        
        return dict
    }
    
    func splitDict(dict: [Int : Int]) -> ([Int], [Int]) {
        let keys = Array(dict.keys)
        let values = Array(dict.values)
        
        return (keys, values)
    }
    
    func getMaxValue(arr: [Int]) -> Int {
        var max = 0
        for num in arr {
            if num > max {
                max = num
            }
        }
        return max
    }
    
    func printStarsAndSpaces(arr: [Int], max: Int) -> String {
        var output = ""
        for item in arr {
            if item < max {
                output += "-"
            } else {
                output += "*"
            }
        }
        return output
    }
    
    func stringOfNumbers(arr: [Int]) -> String {
        var numString = ""
        for item in arr {
            numString += String(item)
        }
        return numString
    }
}
