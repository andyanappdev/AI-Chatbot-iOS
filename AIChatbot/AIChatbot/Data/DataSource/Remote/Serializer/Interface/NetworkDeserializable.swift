//
//  JSONEncodProtocol.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/29/24.
//

import Foundation

protocol NetworkDeserializable {
    func deserialize<T: Decodable>(JSON data: Data) throws -> T
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
