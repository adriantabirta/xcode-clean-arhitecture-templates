//  ___FILEHEADER___

import Combine
import Resolver
import PlanNetGenesis

struct ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    @Injected private var localDataSource: LocalDataSource
    
    @Injected private var remoteDataSource: ___VARIABLE_productName:identifier___RemoteDataSource
    
    @Injected private var mapper: ___VARIABLE_productName:identifier___DataModelTo___VARIABLE_productName:identifier___Mapper
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___Repository {
    
    func get() -> AnyPublisher<___VARIABLE_productName:identifier___, ApplicationError> {
        let local: AnyPublisher<___VARIABLE_productName:identifier___DataModel, ApplicationError> = localDataSource
            .get()
            .compactMap { $0 }
            .eraseToAnyPublisher()
        
        let remote: AnyPublisher<___VARIABLE_productName:identifier___DataModel, ApplicationError> = remoteDataSource
            .fetch()
            .eraseToAnyPublisher()
        
        return Publishers.StreamForce(local: local, remote: remote, localDataSource: localDataSource)
            .compactMap { self.mapper.map(from: $0) }
            .eraseToAnyPublisher()
    }
}
