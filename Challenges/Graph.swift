//
//  Graph.swift
//  Challenges
//
//  Created by Jon Thornburg on 5/4/16.
//  Copyright © 2016 Jon Thornburg. All rights reserved.
//

import Foundation

public struct Graph {
    
    let graphBrain = GraphBrain()
    
    func graphFromArray(arr: [Int]) -> String {
        var output = ""
        
        let dict = graphBrain.arrayToDictionary(arr)
        
        let keyValue = graphBrain.splitDict(dict)
        
        var max = graphBrain.getMaxValue(keyValue.1)
        
        while max > 0 {
            output += graphBrain.printStarsAndSpaces(keyValue.1, max: max)
            output += "\n"
            max--
        }
        
        output += graphBrain.stringOfNumbers(keyValue.0)
        
        return output
    }
}
