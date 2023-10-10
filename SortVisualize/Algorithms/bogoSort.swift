//
//  bogoSort.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/9/23.
//

import SwiftUI

struct bogoSort: View {
    @Binding  var randomArray: [Int]
    @Binding  var isSorting: Bool
    
    
    
    var body: some View {
        Text("BOGO")
    }
    
    
     func randomizeArray() {
        randomArray = randomArray.shuffled()
    }
    
     func sortArray() {
        randomArray.sort()
    }
    
     func toggleRandomization() {
        if isSorting {
            stopRandomization()
        } else {
            startRandomization()
        }
    }
    
     func startRandomization() {
        isSorting = true
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            if randomArray.sorted() == randomArray
            {print("yes sorted")
                isSorting = false}
            if self.isSorting {
                self.randomizeArray()
            } else {
                timer.invalidate()
            }
        }
    }
    
     func stopRandomization() {
        isSorting = false
    }
    
    
    
    
    
    
    
    
    
    
    
}


