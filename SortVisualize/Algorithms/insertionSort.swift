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
    
    //    [80, 200, 240, 110, 170, 70, 250, 210, 120, 50, 95, 20, 260, 140, 150]
    
    
    func insertSort(){
        isSorting = true
        DispatchQueue.global(qos: .userInteractive).async {
            var swapped = false
            repeat {
                swapped = false
                for i in 1..<(self.randomArray.count){
                    let key = randomArray[i]
                    var j = i - 1
                    
                    while j >= 0 && key < randomArray[j]{
                        randomArray[j+1] = randomArray[j]
                        j = j - 1
                    }
                    
                    
                    randomArray[j+1] = key
                    
                    Thread.sleep(forTimeInterval: 0.1)
                }
            }while swapped
            
            // When sorting is complete, update the UI on the main thread
            DispatchQueue.main.async {
                IsSortedView(randomArray: $randomArray, boolArray: $boolArray, isSorting: $isSorting).isSorted()
            }
        }
    }
}
     

