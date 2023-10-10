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
    
    func bubbleSort(){
        isSorting = true
        while isSorting{
            for _ in 0..<14{
                for j in 0..<14{
                    if randomArray[j] > randomArray[j + 1]{
                        let tempNum = randomArray[j]
                        randomArray[j] = randomArray[j + 1]
                        randomArray[j+1] = tempNum
                        
                    }
                }
                
            }
            isSorting = false
        }
        
    
    }
    
}


