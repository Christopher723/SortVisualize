//
//  ContentView.swift
//  SortVisualize
//
//  Created by Christopher Woods on 10/8/23.
//

import SwiftUI

enum Algorithm: String, CaseIterable, Identifiable {
    case insertion, bubble, bogo, merge
    var id: Self { self }
}



struct ContentView: View {
    @State private var randomArray: [Int] = [80, 200, 240, 110, 170, 70, 250, 210, 120, 50, 95, 20, 260, 140, 150]
    @State private var boolArray: [Bool] = [false, false, false, false,false, false, false, false,false, false, false, false,false, false, false]
    
    @State private var sortingInProgress: Bool = false
    @State private var isSorting: Bool = false
    @State private var selectedFlavor: Algorithm = .insertion
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                VStack {
                    HStack{
                        Picker("Algorithm", selection: $selectedFlavor) {
                            Text("Insertion").tag(Algorithm.insertion)
                            Text("Bubble").tag(Algorithm.bubble)
                            Text("Bogo").tag(Algorithm.bogo)
                            Text("Merge").tag(Algorithm.merge)
                        }.scaleEffect(1.4)
                            .disabled(isSorting)
                        
                        Text("Start")
                            .font(.system(size: 30))
                            .padding()
                            .onTapGesture{
                                if selectedFlavor == .insertion{
                                    insertionSort(randomArray: $randomArray, isSorting: $isSorting, boolArray: $boolArray).insertSort()
                                }
                                if selectedFlavor == .bubble{
                                    bubbleSort(randomArray: $randomArray,isSorting: $isSorting, boolArray: $boolArray).bubbleSort()
                                }
                                if selectedFlavor == .bogo{
                                bogoSort(randomArray: $randomArray, isSorting: $isSorting).toggleRandomization()}
                                
                                if selectedFlavor == .merge{
                                    mergeSort(randomArray: $randomArray, isSorting: $isSorting, boolArray: $boolArray).mergeSort(arr: &randomArray)}

                            }
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
//Text("Bogosort")
//    .font(.system(size: 50))
//    .onTapGesture {
//        bogoSort(randomArray: $randomArray, isSorting: $isSorting).toggleRandomization()
//    }
//    .disabled(isSorting)
//Text("Insertion Sort")
//    .font(.system(size: 50))
//    .onTapGesture {
//        insertionSort(randomArray: $randomArray, isSorting: $isSorting, boolArray: $boolArray).insertSort()
//        
//    }
//    .disabled(isSorting)
//
//Text("Bubble Sort")
//    .font(.system(size: 50))
//    .onTapGesture {
//        bubbleSort(randomArray: $randomArray,isSorting: $isSorting, boolArray: $boolArray).bubbleSort()
//    }
//    .disabled(isSorting)
