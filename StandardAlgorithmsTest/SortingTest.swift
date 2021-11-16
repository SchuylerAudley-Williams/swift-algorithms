//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Audley-Williams, Schuyler (SPH) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let data = [3,5,1,2,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    

}
