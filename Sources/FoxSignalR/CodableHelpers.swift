//
// Created by kasem_dev on 4/4/2022 AD.
//

import Foundation

// Credit: http://yourfriendlyioscoder.com/blog/2019/04/27/any-encodable/
struct AnyEncodable: Encodable {
    let value: Encodable

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try value.encode(to: &container)
    }
}

extension Encodable {
    func encode(to container: inout SingleValueEncodingContainer) throws {
        try container.encode(self)
    }
}

struct DecodableVoid: Decodable {
}