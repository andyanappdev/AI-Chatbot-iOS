//
//  JSONEncodProtocol.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/29/24.
//

import Foundation

protocol NetworkDeserializable {
    func deserialize<T: Decodable>(_ data: Data) throws -> T
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
