//  ___FILEHEADER___

import Combine
import Resolver

protocol ___FILEBASENAMEASIDENTIFIER___ {
    
    func execute() -> AnyPublisher<Void, Error>
}

struct Real___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    @Injected private var repository: ___VARIABLE_productName:identifier___Repository
}

// MARK: - Real___VARIABLE_productName:identifier___UseCase implementation

extension Real___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___UseCase {
    
    func execute() -> AnyPublisher<Void, Error> {
        Future { promise in
            // not implemented
         }.eraseToAnyPublisher()
    }
}
