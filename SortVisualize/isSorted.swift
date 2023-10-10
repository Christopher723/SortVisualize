//
//  isSorted.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/10/23.
import SwiftUI

struct IsSortedView: View {
    @Binding var randomArray: [Int]
    @Binding var boolArray: [Bool]
    @Binding var isSorting: Bool
    
    var trueArray = [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]

    var body: some View {
        Text("Hello, World!")
    }

    func isSorted() {
        isSorting = false
        let temp = boolArray

        // Iterate through the indices of boolArray with a delay
        for i in 0..<14 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.1) {
                if i > 0 {
                    self.boolArray[i - 1] = false
                }
                self.boolArray[i] = true
                
                // Check if this is the last iteration and update the UI accordingly
                    if i == 13 {
                        // Set boolArray back to trueArray after all updates
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            self.boolArray = self.trueArray
                            DispatchQueue.main.asyncAfter(deadline: .now() + Double(14) * 0.1) {
                                self.boolArray = temp
                        }
                    }
                }
            }
        
        
        }
    }
}

