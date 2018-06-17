import Foundation

/// Factory building server adapter which requires authentication.
open class HTTPAuthenticationAdapterFactory: ServerAdapterFactory {
    let auth: HTTPAuthentication?

    required public init(serverHost: String, serverPort: Int, auth: HTTPAuthentication?) {
        self.auth = auth
        super.init(serverHost: serverHost, serverPort: serverPort)
    }
}

open class SOCKS5AuthenticationAdapterFactory: ServerAdapterFactory {
    let authName: String?
    let authPswd: String?
    
    required public init(serverHost: String, serverPort: Int, authName: String?, authPswd: String?) {
        self.authName = authName
        self.authPswd = authPswd
        super.init(serverHost: serverHost, serverPort: serverPort)
    }
}

