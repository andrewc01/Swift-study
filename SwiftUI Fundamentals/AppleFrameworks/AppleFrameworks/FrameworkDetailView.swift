//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Andy on 3/24/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailedView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailedView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
                    
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailedView: .constant(false))
}
