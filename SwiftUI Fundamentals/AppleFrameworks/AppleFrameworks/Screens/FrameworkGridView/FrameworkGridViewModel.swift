//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Andy on 3/24/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailedView = true }
    }
    
    @Published var isShowingDetailedView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
