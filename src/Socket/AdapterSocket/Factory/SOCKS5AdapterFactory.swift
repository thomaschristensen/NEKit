import Foundation

/// Factory building SOCKS5 adapter.
open class SOCKS5AdapterFactory: SOCKS5AuthenticationAdapterFactory {
    
    required public init(serverHost: String, serverPort: Int, authName: String?, authPswd: String?) {
        super.init(serverHost: serverHost, serverPort: serverPort, authName: authName, authPswd: authPswd)
    }
    
    /**
     Get a SOCKS5 adapter.

     - parameter session: The connect session.

     - returns: The built adapter.
     */
    override open func getAdapterFor(session: ConnectSession) -> AdapterSocket {
        let adapter = SOCKS5Adapter(serverHost: serverHost, serverPort: serverPort, authName: authName, authPswd: authPswd)
        adapter.socket = RawSocketFactory.getRawSocket()
        return adapter
    }
}

