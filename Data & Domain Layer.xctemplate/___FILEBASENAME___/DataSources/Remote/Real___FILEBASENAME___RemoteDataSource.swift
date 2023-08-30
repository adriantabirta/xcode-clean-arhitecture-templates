//  ___FILEHEADER___

import Combine
import Resolver
import PlanNetGenesis

struct ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    @Injected private var requestExecutor: RequestExecutor
}

// MARK: - ___VARIABLE_productName:identifier___RemoteDataSource

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___RemoteDataSource {
    
    func fetch<Element>(with parameters: [Encodable]) -> AnyPublisher<Element, ApplicationError> where Element: Decodable, Element: Encodable {
        return requestExecutor
            .request(API.getData(parameters))
            .eraseToAnyPublisher()
    }
}

// MARK: - API

extension ___FILEBASENAMEASIDENTIFIER___ {
    
    enum API {
        case getData([Encodable])
    }
}

// MARK: - ApiEndpoint

extension ___FILEBASENAMEASIDENTIFIER___.API: PlanNetGenesis.ApiEndpoint {
    
    var baseUrl: String { "" }
    
    var path: String { "" }
    
    var method: GenericHTTPMethod { .get }
    
    var headers: GenericHTTPHeaders { [:] }
    
    var parameters: GenericParameters { [:] }
    
    var encoding: GenericParameterEncoding { .urlEncodingDefault }
    
    var isAuthtenticationTokenRequired: Bool { true }
}
