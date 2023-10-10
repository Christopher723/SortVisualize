//
//  insertionSort.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/10/23.
//

import SwiftUI

struct insertionSort: View {
    @Binding  var randomArray: [Int]
    @Binding var isSorting: Bool
    @Binding var boolArray: [Bool]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func insertSort(){
        for i in 1..<(self.randomArray.count){
            var key = randomArray[i]
            var j = i - 1
            
            while j >= 0 && key < randomArray[j]{
                randomArray[j+1] = randomArray[j]
                j = j - 1
            }
            randomArray[j+1] = key
            
        }
    }
}
    
    
    
    
    //DispatchQueue.global(qos: .userInteractive).async {
    //    var swapped = false
    //    repeat {
    //        for i in 1..<(self.randomArray.count){
    //            let key = randomArray[i]
    //            var j = i - 1
    //
    //            while j >= 0 && key < randomArray[j]{
    //                DispatchQueue.main.async {
    //                    randomArray[j+1] = randomArray[j]
    //                }
    //                swapped = true
    //                j = j - 1
    //
    //            }
    //            randomArray[j+1] = key
    //            Thread.sleep(forTimeInterval: 0.05)
    //        }
    //    }
    //    while swapped
    //    DispatchQueue.main.async {
    //        IsSortedView(randomArray: $randomArray, boolArray: $boolArray, isSorting: $isSorting).isSorted()
    //    }
    //
    //
    //}


