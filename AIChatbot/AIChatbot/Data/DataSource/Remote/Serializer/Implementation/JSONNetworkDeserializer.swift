//
//  JSONNetworkDeserializer.swift
//  AIChatbot
//
//  Created by Doyoung An on 4/12/24.
//

import Foundation

struct JSONNetworkDeserializer: NetworkDeserializable {
    
    // MARK: - Private property
    private let decoder: JSONDecoder
    
    // MARK: - Life Cycle
    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    // MARK: - Public
    func deserialize<T: Decodable>(JSON data: Data) throws -> T {
        try decoder.decode(T.self, from: data)
    }
}
