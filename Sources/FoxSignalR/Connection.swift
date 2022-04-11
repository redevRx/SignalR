//
// Created by kasem_dev on 4/4/2022 AD.
//

//  Created by Pawel Kadluczka on 3/4/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//
import Foundation

public protocol Connection {
    var delegate: MyConnectionDelegate? {get set}
    var inherentKeepAlive: Bool {get}
    var connectionId: String? {get}
    func start() -> Void
    func send(data: Data, sendDidComplete: @escaping (_ error: Error?) -> Void) -> Void
    func stop(stopError: Error?) -> Void
}