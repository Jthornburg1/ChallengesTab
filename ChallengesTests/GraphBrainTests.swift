//
//  GraphBrainTests.swift
//  Challenges
//
//  Created by Jon Thornburg on 5/4/16.
//  Copyright © 2016 Jon Thornburg. All rights reserved.
//

import XCTest
@testable import Challenges

class GraphBrainTests: XCTestCase {
    
    let graphBrain = GraphBrain()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIfArrayToDictionaryReturnsDictionary() {
        let arr = [8, 8, 8, 8, 8]
        let dict = graphBrain.arrayToDictionary(arr)
        XCTAssertEqual(dict, [8 : 5])
    }
    
    func testIfSplitDictSplitsDict() {
        let dict = [1 : 3, 2 : 4, 3 : 5, 4 : 6]
        let twoArrays: ([Int], [Int]) = self.graphBrain.splitDict(dict)
        XCTAssertEqual(twoArrays.0, [3, 1, 2, 4])
        XCTAssertEqual(twoArrays.1, [5, 3, 4, 6])
    }
    
    func testIfgetMaxValueGetsMaxValue() {
        let arr = [1, 4, 1, 0, 9]
        let max = graphBrain.getMaxValue(arr)
        XCTAssertEqual(max, 9)
    }
    
    func testIfPrintStarsAndSpacesWorks() {
        let arr = [3, 4, 6, 3, 8, 9, 1, 2]
        let max = graphBrain.getMaxValue(arr)
        let str = graphBrain.printStarsAndSpaces(arr, max: max)
        XCTAssertEqual(str, "-----*--")
    }
    
    func testIfStringOfNumbersPrintsNumbers() {
        let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
        let str = self.graphBrain.stringOfNumbers(arr)
        XCTAssertEqual(str, "1234567890")
    }
}
