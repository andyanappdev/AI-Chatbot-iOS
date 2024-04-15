//
//  JSONNetworkSerializer.swift
//  AIChatbot
//
//  Created by Doyoung An on 4/11/24.
//

import Foundation

struct JSONNetworkSerializer: NetworkSerializable {
    
    // MARK: - Private property
    private let encoder: JSONEncoder
    
    // MARK: - Life Cycle
    init(encoder: JSONEncoder) {
        self.encoder = encoder
    }
    
    // MARK: - Method
    
    func serialize<T: Encodable>(EncodableData data: T) throws -> Data {
        try encoder.encode(data)
    }
}
