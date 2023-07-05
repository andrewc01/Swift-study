//
//  ContentView.swift
//  LengthConversion
//
//  Created by Andy C on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var originalLength = 0.0
    @State private var inputUnit = "m"
    @State private var outputUnit = "km"
    
    @FocusState private var isFocused: Bool
    
    let units = ["m", "km", "feet", "yards", "miles"]
    
    var convertedValue: Double = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Length you want to convert from", value: $originalLength, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isFocused)
                }
                
                Section {
                    Picker("Select unit", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("What unit you want to convert from?")
                }
                
                Section {
                    Picker("Select unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("What unit you want to convert to?")
                }
                
                Section {
                    Text(convertedValue, format: .number)
                }
            }
            .navigationTitle("Length Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
