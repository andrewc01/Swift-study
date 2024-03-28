//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Andy on 3/24/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailedView: $viewModel.isShowingDetailedView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle(" Frameworks")
        }
        .accentColor(Color(.label))
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
