//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Andy on 7/1/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                HStack {
                    Image("asian-flank-steak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                    
                }
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
