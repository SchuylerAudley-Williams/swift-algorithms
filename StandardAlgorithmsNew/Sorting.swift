//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Audley-Williams, Schuyler (SPH) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(unsortedData: [Int]) -> [Int] {
        var data = unsortedData
        if data.count == 0 {
            return []
        }
        for _ in 0...data.count-1 {
            for j in 0...data.count-2 {
                if data[j] > data[j+1] {
                    let temp = data[j]
                    data[j] = data[j+1]
                    data[j+1] = temp
                }
            }
        }
        return data
    }
    
    func mergeSort(unsortedData: [Int]) -> [Int] {
        return unsortedData
    }
}
