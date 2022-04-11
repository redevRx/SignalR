//
// Created by kasem_dev on 4/4/2022 AD.
//

//
//  Created by Pawel Kadluczka on 4/13/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//
import Foundation

internal class Util {
    public static func dispatchToMainThread(action: @escaping () -> Void) {
        DispatchQueue.main.async(execute: action)
    }
}
