//  ___FILEHEADER___

import Resolver
import OpenTaxiCommon

class ___FILEBASENAMEASIDENTIFIER___: GenericViewModel {
    
    // MARK: - Dependencies

    @Injected private var cancelOrderUseCase: CancelOrderUseCase
    
    // MARK: - Properties

    @Published var uiModel: ___FILEBASENAMEASIDENTIFIER___UiModel = .init()
}

// MARK: - Public

extension ___FILEBASENAMEASIDENTIFIER___ {

    func onAppear() {
        
    }
}

// MARK: - Private

private extension ___FILEBASENAMEASIDENTIFIER___ {

}