//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Audley-Williams, Schuyler (SPH) on 29/11/2021.
//

import XCTest

let sorting = Sorting()

class SearchingTest: XCTestCase {
    func testLinearSearchWithIntegerInInputArrayReturnsTrue() {
        //arrange
        let searching = Searching()
        
        let array = [3,5,1,2,9]
        let target = 3
        let expected = true
        
        //act
        //assert
        let actual = searching.linearSearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testLinearSearchWithTargetNotInArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        
        let array = [445,65,12,3,90]
        let target = 4
        let expected = false
        
        //act
        //assert
        let actual = searching.linearSearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testLinearSearchWithEmptyArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        
        let array = [Int]()
        let target = 3
        let expected = false
        
        //act
        //assert
        let actual = searching.linearSearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testLinearSearchPerformanceN5() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<5 {
            array.append(Int.random(in: 0..<100))
        }
        let target = array[Int.random(in: 0..<5)]
        //act
        measure {
            _ = searching.linearSearch(array: array, target: target)
        }
    }
    
    func testLinearSearchPerformanceN50() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<50 {
            array.append(Int.random(in: 0..<100))
        }
        let target = array[Int.random(in: 0..<50)]
        //act
        measure {
            _ = searching.linearSearch(array: array, target: target)
        }
    }
    
    func testLinearSearchPerformanceN500() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<500 {
            array.append(Int.random(in: 0..<100))
        }
        let target = array[Int.random(in: 0..<500)]
        //act
        measure {
            _ = searching.linearSearch(array: array, target: target)
        }
    }
    
    func testBinarySearchWithIntegerInInputArrayReturnsTrue() {
        //arrange
        let searching = Searching()
        
        let array = [1,2,3,5,9,22]
        let target = 3
        let expected = true
        
        //act
        //assert
        let actual = searching.binarySearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testBinarySearchWithTargetNotInArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        
        let array = [445,65,12,3,90]
        let target = 4
        let expected = false
        
        //act
        //assert
        let actual = searching.binarySearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testBinarySearchWithEmptyArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        
        let array = [Int]()
        let target = 3
        let expected = false
        
        //act
        //assert
        let actual = searching.binarySearch(array: array, target: target)
        XCTAssertEqual(actual, expected)
        }
    
    func testBinarySearchPerformanceN5() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<5 {
            array.append(Int.random(in: 0..<100))
        }
        let target = array[Int.random(in: 0..<5)]
        array = sorting.mergeSort(unsortedData: array)
        //act
        measure {
            _ = searching.binarySearch(array: array, target: target)
        }
    }
    
    func testBinarySearchPerformanceN50() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<50 {
            array.append(Int.random(in: 0..<100))
        }
        array = sorting.mergeSort(unsortedData: array)
        let target = array[Int.random(in: 0..<50)]
        //act
        measure {
            _ = searching.binarySearch(array: array, target: target)
        }
    }
    
    func testBinarySearchPerformanceN500() {
        //arrange
        let searching = Searching()
        var array: [Int] = []
        for _ in 0..<500 {
            array.append(Int.random(in: 0..<100))
        }
        array = sorting.mergeSort(unsortedData: array)
        let target = array[Int.random(in: 0..<500)]
        //act
        measure {
            _ = searching.binarySearch(array: array, target: target)
        }
    }
}
