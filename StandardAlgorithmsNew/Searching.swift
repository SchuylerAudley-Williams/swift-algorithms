//
//  Searching.swift
//  StandardAlgorithmsNew
//
//  Created by Audley-Williams, Schuyler (SPH) on 29/11/2021.
//

import Foundation

class Searching {
    
    func linearSearch(array: [Int], target: Int) -> Bool {
        for i in 0..<array.count {
            if target == array[i] {
                return true
            }
        }
        return false
    }
    
    func binarySearch(array:[Int], target: Int) -> Bool {
        var lowerBound = 0
        var upperBound = array.count
          
        while lowerBound < upperBound {
            let midIndex = lowerBound + (upperBound - lowerBound) / 2

            if array[midIndex] == target {
                return true
            } else if array[midIndex] < target {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex
            }
        }
        return false
    }
}
