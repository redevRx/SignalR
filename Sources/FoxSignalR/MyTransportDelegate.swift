//
// Created by kasem_dev on 4/4/2022 AD.
//

//
//  Created by Pawel Kadluczka on 2/25/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//
import Foundation

public protocol TransportDelegate: AnyObject {
    func transportDidOpen() -> Void
    func transportDidReceiveData(_ data: Data) -> Void
    func transportDidClose(_ error: Error?) -> Void
}
