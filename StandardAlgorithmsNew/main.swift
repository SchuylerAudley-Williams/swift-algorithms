//
//  main.swift
//  StandardAlgorithmsNew
//
//  Created by Audley-Williams, Schuyler (SPH) on 16/11/2021.
//

import Foundation

let sorting = Sorting()
let searching = Searching()

let algorithmsInfo = [["Bubble Sort", "Time complexity: O(n^2)"],["Merge Sort", "Time complexity: O(n log(n))"], ["Quick Sort", "Time complexity: O(n log(n))"], ["Insertion Sort", "Time complexity: O(n^2)"], ["Linear Search", "Time complexity: O(n)"], ["Binary Search", "Time complexity: O(log(n))", "Precondition: Sorted array input"]]

var end = false

while !end {
    print("""
1. Bubble Sort
2. Merge Sort
3. Quick Sort
4. Insertion Sort
5. Linear Search
6. Binary Search
7. Exit
""")
    if let input = readLine() {
        switch input {
            case "1":
                for info in algorithmsInfo[0] {
                    print(info)
                }
                let exampleArray = [5,23,67,111,3,90,45,75]
                print("""
Example:
    Input: \(exampleArray)
    Output: \(sorting.bubbleSort(unsortedData: exampleArray))
""")
            case "2":
                for info in algorithmsInfo[1] {
                        print(info)
                    }
                let exampleArray = [5,23,67,111,3,90,45,75]
                print("""
Example:
    Input: \(exampleArray)
    Output: \(sorting.mergeSort(unsortedData: exampleArray))
""")
            case "3":
                for info in algorithmsInfo[2] {
                    print(info)
                }
            case "4":
                for info in algorithmsInfo[3] {
                    print(info)
                }
            case "5":
                for info in algorithmsInfo[4] {
                    print(info)
                }
                let exampleArray = [5,23,67,111,3,90,45,75]
                let exampleTarget = 3
                print("""
Example:
    Input: array - \(exampleArray), target - \(exampleTarget)
    Output: \(searching.linearSearch(array: exampleArray, target: exampleTarget))
""")

            case "6":
                for info in algorithmsInfo[5] {
                    print(info)
                }
                let exampleArray = [3,5,23,43,57,92,125,678]
                let exampleTarget = 92
                print("""
Example:
    Input: array - \(exampleArray), target - \(exampleTarget)
    Output: \(searching.binarySearch(array: exampleArray, target: exampleTarget))
""")

            case "7":
                end = true
            default:
                print("Invalid input")
        }
    }
}

