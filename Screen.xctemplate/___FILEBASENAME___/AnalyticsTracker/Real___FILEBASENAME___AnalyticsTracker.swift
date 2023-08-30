//  ___FILEHEADER___

import Resolver

struct ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    @Injected private var analyticsService: AnalyticsService
}

// MARK: - ___VARIABLE_productName:identifier___AnalyticsTracker

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___AnalyticsTracker {
    
    func track___VARIABLE_productName:identifier___Screen() {
        analyticsService.trackScreen(
            ___VARIABLE_productName:identifier___AnalyticsTrackerConstants.___VARIABLE_productName:identifier___,
            data:
                [
                    AnalyticsTrackingKeys.section: ___VARIABLE_productName:identifier___AnalyticsTrackerConstants.___VARIABLE_productName:identifier___
                ]
        )
    }
}
