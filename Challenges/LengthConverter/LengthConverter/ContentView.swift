//
//  ContentView.swift
//  Challenge1
//
//  Created by Andy C on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var input:Double = 0
    @State private var userUnit = "m"
    @State private var outputUnit = "km"
    @FocusState private var isFocused: Bool

    let units = ["m", "km", "feet", "yards", "miles"]
    
    var convertedLength: Double {
        var convertedToMeter:Double = 0
        var converted: Double = 0
        
        // Convert all units to "m"
        if userUnit == "m" {
            convertedToMeter = input
        } else if userUnit == "km"{
            convertedToMeter = input * 1000
        } else if userUnit == "feet" {
            convertedToMeter = input / 3.281
        } else if userUnit == "yards" {
            convertedToMeter = input / 1.094
        } else {
            convertedToMeter = input * 1609
        }
        
        // Convert all units to selected to unit from "m"
        if outputUnit == "m" {
            converted = convertedToMeter
        } else if outputUnit == "km"{
            converted = convertedToMeter / 1000
        } else if outputUnit == "feet" {
            converted = convertedToMeter * 3.281
        } else if outputUnit == "yards" {
            converted = convertedToMeter * 1.094
        } else {
            converted = convertedToMeter / 1609
        }
        
        return converted
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter length", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isFocused)
                }
                
                
                Section {
                    Picker("Select unit", selection: $userUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                } header: {
                    Text("What do you want to convert from?")
                }

                Section {
                    Picker("Select unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                } header: {
                    Text("What do you want to convert to?")
                }
                
                Text(convertedLength, format: .number)
            }
            .navigationTitle("Length Converter")
            .toolbar{
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
