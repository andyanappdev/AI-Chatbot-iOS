//
//  JSONDecoable.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/28/24.
//

import Foundation

protocol NetworkSerializable {
    func serialize(_ parameters: [String: Any]) throws -> Data
}

/* JSONDecoder 사용
protocol JSONDecodProtocol {
    func fromJson(json: Data) throws -> Self
}

extension JSONDecodProtocol where Self: Decodable {
    func fromJson(json: Data) throws -> Self {
        return try JSONDecoder().decode(Self.self, from: json)
    }
}
*/
