//  ___FILEHEADER___

import SwiftUI
import Resolver

struct ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    @StateObject private var viewModel: ___VARIABLE_productName:identifier___ViewModel = Resolver.resolve()
}

// MARK: - View

extension ___FILEBASENAMEASIDENTIFIER___: View {
    
    var body: some View {
        content
            .onAppear(perform: viewModel.onViewAppear)
    }
}

// MARK: - Private

private extension ___FILEBASENAMEASIDENTIFIER___ {
    
    var content: some View {
        Text("Add view implementation here")
    }
}
