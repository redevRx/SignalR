//
// Created by kasem_dev on 4/4/2022 AD.
//

import Foundation

public protocol MessageEvent:AnyObject
{
    func onMessage(data:Data)
}
