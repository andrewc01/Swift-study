//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Andy on 3/28/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailedView: Bool
    
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailedView: .constant(false))
}
