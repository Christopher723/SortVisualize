//
//  bogoSort.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/9/23.
//

import SwiftUI

struct bubbleSort: View {
    @Binding  var randomArray: [Int]
    @Binding var isSorting: Bool
    
    
    var body: some View {
        Text("Bubble")
    }
    
    func bubbleSort() {
        isSorting = true
        
        DispatchQueue.global(qos: .userInteractive).async {
            var swapped = false
            repeat {
                swapped = false
                for j in 0..<(self.randomArray.count - 1) {
                    if self.randomArray[j] > self.randomArray[j + 1] {
                        DispatchQueue.main.async {
                            self.randomArray.swapAt(j, j + 1)
                        }
                        swapped = true
                    }
                    // Introduce a delay here
                    Thread.sleep(forTimeInterval: 0.05) // Adjust the delay time as needed
                }
            } while swapped
            
            // When sorting is complete, update the UI on the main thread
            DispatchQueue.main.async {
                self.isSorting = false
            }
        }
    }
}
