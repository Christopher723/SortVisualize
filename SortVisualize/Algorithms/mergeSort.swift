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
    
    
    func mergeSort(arr: inout [Int]){
        if arr.count > 1{
            var mid = arr.count / 2
            
            var L = Array(arr[..<mid])
            
            var R = Array(arr[mid...])
            
            mergeSort(arr: &L)
            mergeSort(arr: &R)
            
            
            
            var i = 0, j = 0, k = 0
            
            while i < L.count && j < R.count{
                if L[i] <= R[j]{
                    arr[k] = L[i]
                    i = i + 1
                }
                else{
                    arr[k] = R[j]
                    j = j + 1
                }
                k = k + 1
            }
            
            
            while i < L.count {
                arr[k] = L[i]
                i += 1
                k += 1
            }
            while j < R.count {
                arr[k] = R[j]
                j += 1
                k += 1
            }
    
        }
        
    }
    
    
    
    
    
    
    
    
}


