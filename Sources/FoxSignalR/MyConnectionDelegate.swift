//
// Created by kasem_dev on 4/4/2022 AD.
//

import Foundation

public protocol MyConnectionDelegate: AnyObject {
    func connectionDidOpen(connection: Connection)
    func connectionDidFailToOpen(error: Error)
    func connectionDidReceiveData(connection: Connection, data: Data)
    func connectionDidClose(error: Error?)
    func connectionWillReconnect(error: Error)
    func connectionDidReconnect()
}

public extension MyConnectionDelegate {
    func connectionWillReconnect(error: Error) {}
    func connectionDidReconnect() {}
}