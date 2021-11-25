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
        
        let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]), (input: [30,15,5,2,39], expected: [2,5,15,30,39])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(unsortedData: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(unsortedData: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithSortedArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,4,9,21,34]
        let expected = [1,4,9,21,34]
        //act
        let actual = sorting.bubbleSort(unsortedData: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortPerformanceN5() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0..<5 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            _ = sorting.bubbleSort(unsortedData: data)
        }
    }
    
    func testBubbleSortPerformanceN50() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0..<50 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            _ = sorting.bubbleSort(unsortedData: data)
        }
    }
    
    func testBubbleSortPerformanceN500() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0..<500 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            _ = sorting.bubbleSort(unsortedData: data)
        }
    }
    
    /*func testMergeSortWithUnsortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [13,2,87,5,34]
        let expected = [2,5,13,34,87]
        //act
        let actual = sorting.mergeSort(unsortedData: data)
        //assert
        XCTAssertEqual(actual, expected)
    }*/
    

}
