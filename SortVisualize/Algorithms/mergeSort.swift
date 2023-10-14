//
//  mergeSort.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/11/23.
//

import SwiftUI

struct mergeSort: View {
    @Binding  var randomArray: [Int]
    @Binding var isSorting: Bool
    @Binding var boolArray: [Bool]
    
    
    var body: some View {
        Text("Merge")
    }
    
    
    func mergeSort(arr: inout [Int]) {
        let n = arr.count
        var currentSize = 1
        
        while currentSize < n {
            var left = 0
            
            while left < n - 1 {
                let mid = min(left + currentSize - 1, n - 1)
                let right = min(left + 2 * currentSize - 1, n - 1)
                
                merge(&arr, left, mid, right)
                left = left + 2 * currentSize
            }
            
            currentSize = 2 * currentSize
        }
    }

    func merge(_ arr: inout [Int], _ left: Int, _ mid: Int, _ right: Int) {
        let n1 = mid - left + 1
        let n2 = right - mid
        
        var L = [Int](repeating: 0, count: n1)
        var R = [Int](repeating: 0, count: n2)
        
        for i in 0..<n1 {
            L[i] = arr[left + i]
        }
        for i in 0..<n2 {
            R[i] = arr[mid + i + 1]
        }
        
        var i = 0
        var j = 0
        var k = left
        
        while i < n1 && j < n2 {
            if L[i] <= R[j] {
                arr[k] = L[i]
                i += 1
            } else {
                arr[k] = R[j]
                j += 1
            }
            k += 1
        }
        
        while i < n1 {
            arr[k] = L[i]
            i += 1
            k += 1
        }
        
        while j < n2 {
            arr[k] = R[j]
            j += 1
            k += 1
        }
    }

    
    
    
    
}


