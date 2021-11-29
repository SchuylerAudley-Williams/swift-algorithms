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
    
    func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
        var orderedArray = [Int]()
        var left = leftArray
        var right = rightArray
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                orderedArray.append(left.removeFirst())
            } else {
                orderedArray.append(right.removeFirst())
            }
        }
        
        return orderedArray + left + right
        
    }
    
    func mergeSort(unsortedData: [Int]) -> [Int] {
        if unsortedData.count <= 1 {
            return unsortedData
        } else {
            let middle = unsortedData.count/2
            
            let leftArray = Array(unsortedData[0..<middle])
            let rightArray = Array(unsortedData[middle..<unsortedData.count])
            
            return merge(leftArray: mergeSort(unsortedData: leftArray), rightArray: mergeSort(unsortedData: rightArray))
        }
    }
    
    func insertionSort(unsortedData: [Int]) -> [Int]{
        if unsortedData.count > 1 {
            var array = unsortedData
            
            for index in 1..<array.count {
                let value = array[index]
                var position = index

                while position > 0 && array[position - 1] > value {
                array[position] = array[position - 1]
                position -= 1
                }

                array[position] = value
            }
            return array
        } else {
            return unsortedData
        }
    }
}
