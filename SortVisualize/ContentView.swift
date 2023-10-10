//
//  ContentView.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomArray: [Int] = [80, 200, 240, 110, 170, 70, 250, 210, 120, 50, 95, 20, 260, 140, 150]
    @State private var boolArray: [Bool] = [false, false, false, false,false, false, false, false,false, false, false, false,false, false, false]
    
    @State private var sortingInProgress: Bool = false
    @State private var isSorting: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                VStack {
                    Text("Bogosort")
                        .font(.system(size: 50))
                        .onTapGesture {
                            bogoSort(randomArray: $randomArray, isSorting: $isSorting).toggleRandomization()
                        }
                   
                    
                    Text("Bubble Sort")
                        .font(.system(size: 50))
                        .onTapGesture {
                            bubbleSort(randomArray: $randomArray,isSorting: $isSorting).bubbleSort()
                        }
                    Text("Stop/Randomize")
                        .font(.system(size: 30))
                        .onTapGesture {
                            resetARRAY(randomArray: $randomArray, isSorting: $isSorting).randomizeArray()
                        }
                }
                Spacer().frame(width: 120)
                ForEach(randomArray.indices, id: \.self) { index in
                    let number = randomArray[index]
                    let isTrue = boolArray[index]
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(isTrue ? Color.green : Color.blue)
                            .frame(width: 15, height: CGFloat(number))
                            
                    }
                }
                Spacer()
            }
            Spacer().frame(height: 10)
        }
        
    }
    

}



#Preview {
    ContentView()
}
