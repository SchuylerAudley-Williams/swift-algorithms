//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Audley-Williams, Schuyler (SPH) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        }
        for i in data.count()-1 {
            if data[i] > data[i+1] {
                let temp = data[i]
                data[i] = data[i+1]
                data[i+1] = temp
            }
            return data
        }
    }
}
