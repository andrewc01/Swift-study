//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Andy on 3/24/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
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

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
