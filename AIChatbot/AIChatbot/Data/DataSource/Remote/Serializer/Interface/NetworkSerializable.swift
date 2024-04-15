//
//  JSONDecoable.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/28/24.
//

import Foundation

protocol NetworkSerializable {
    func serialize<T: Encodable>(EncodableData data: T) throws -> Data
}

/* JSONEncoder 사용
protocol JSONEncodProtocol {
    func toJson() throws -> Data
}

extension JSONEncodProtocol where Self: Encodable {
    func toJson() throws -> Data {
        return try JSONEncoder().encode(self)
    }
}
*/
