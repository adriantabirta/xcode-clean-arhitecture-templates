//  ___FILEHEADER___

import Combine
import Resolver
import Foundation
import PlanNetGenesis

class ___FILEBASENAMEASIDENTIFIER___: ObservableObject {
    
    // MARK: - Dependencies
    
    @Injected private var ___VARIABLE_productName:identifier___AnalyticsTracker: ___VARIABLE_productName:identifier___AnalyticsTracker

    // MARK: - Properties
    
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Init
    
    init() {
        // not implemented
    }
}

// MARK: - Public

extension ___FILEBASENAMEASIDENTIFIER___ {
    
    func onViewAppear() {
        ___VARIABLE_productName:identifier___AnalyticsTracker.track___VARIABLE_productName:identifier___Screen()
    }
}

// MARK: - Private

private extension ___FILEBASENAMEASIDENTIFIER___ {
    
}
