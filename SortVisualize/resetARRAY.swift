//
//  resetARRAY.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/9/23.
//

import SwiftUI

struct resetARRAY: View {
    @Binding var randomArray: [Int]
    @Binding var isSorting: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func randomizeArray(){
        isSorting.toggle()
        isSorting.toggle()
        randomArray = randomArray.shuffled()
        
    }
    
}

