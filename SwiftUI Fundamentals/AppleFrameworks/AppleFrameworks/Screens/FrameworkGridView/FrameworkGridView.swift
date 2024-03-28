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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailedView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailedView: $viewModel.isShowingDetailedView)
            }
        }
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
