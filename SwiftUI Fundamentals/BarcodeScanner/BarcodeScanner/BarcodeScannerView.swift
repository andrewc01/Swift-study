//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Andy on 3/28/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .frame(maxWidth:.infinity, maxHeight: 300)
                
                Spacer().frame(height: 80)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
