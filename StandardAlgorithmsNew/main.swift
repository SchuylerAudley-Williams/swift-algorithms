//
//  main.swift
//  StandardAlgorithmsNew
//
//  Created by Audley-Williams, Schuyler (SPH) on 16/11/2021.
//

import Foundation

let sorting = Sorting()
let searching = Searching()

let algorithmsInfo = [["Bubble Sort", "Time complexity: O(n^2)", "Goes through each element and compares it with all other elements ahead of it until it is smaller than an element"],["Merge Sort", "Time complexity: O(n log(n))", "Breaks down unsorted array into sorted arrays of one and builds them back up into one sorted array"], ["Insertion Sort", "Time complexity: O(n^2)", "An insertion sort compares values in turn, starting with the second value in the list. If this value is greater than the value to the left of it, no changes are made. Otherwise this value is repeatedly moved left until it meets a value that is less than it. The sort process then starts again with the next value. This continues until the end of the list is reached."], ["Linear Search", "Time complexity: O(n)", "Compares each element of the array with the desired element until it is found or the end of the array has been reached"], ["Binary Search", "Time complexity: O(log(n))", "Precondition: Sorted array input", "Finds the midpoint of a sorted array, if the desired element is greater than the midpoint the right side of the array is kept and the process begins again."]]

var end = false

while !end {
    print("""
1. Bubble Sort
2. Merge Sort
3. Insertion Sort
4. Linear Search
5. Binary Search
6. Exit
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
                let exampleArray = [5,23,67,111,3,90,45,75]
                print("""
Example:
    Input: \(exampleArray)
    Output: \(sorting.insertionSort(unsortedData: exampleArray))
""")
            case "4":
                for info in algorithmsInfo[3] {
                    print(info)
                }
                let exampleArray = [5,23,67,111,3,90,45,75]
                let exampleTarget = 3
                print("""
Example:
    Input: array - \(exampleArray), target - \(exampleTarget)
    Output: \(searching.linearSearch(array: exampleArray, target: exampleTarget))
""")

            case "5":
                for info in algorithmsInfo[4] {
                    print(info)
                }
                let exampleArray = [3,5,23,43,57,92,125,678]
                let exampleTarget = 92
                print("""
Example:
    Input: array - \(exampleArray), target - \(exampleTarget)
    Output: \(searching.binarySearch(array: exampleArray, target: exampleTarget))
""")

            case "6":
                end = true
            default:
                print("Invalid input")
        }
    }
}

