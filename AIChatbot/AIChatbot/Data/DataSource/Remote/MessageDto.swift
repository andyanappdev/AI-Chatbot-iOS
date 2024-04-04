//
//  MessageDto.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/28/24.
//

// MARK: - MessageDto
struct MessageDto: Decodable {
    let id, object: String?
    let created: Int?
    let model: String?
    let choices: [Choice]?
    let usage: Usage?
    let systemFingerprint: String?

    enum CodingKeys: String, CodingKey {
        case id, object, created, model, choices, usage
        case systemFingerprint = "system_fingerprint"
    }
}

// MARK: - Choice
struct Choice: Decodable {
    let index: Int?
    let answer: Answer?
    let logprobs: Logprobs?
    let finishReason: String?

    enum CodingKeys: String, CodingKey {
        case index, logprobs
        case answer = "message"
        case finishReason = "finish_reason"
    }
}

// MARK: - Answer
struct Answer: Decodable {
    let role, content: String?
}

// MARK: - Logprobs
struct Logprobs: Decodable {
    let token: String?
    let logprob: Double?
    let bytes: [Int]?
    let topLogprobs: [TopLogprobs]?
    
    enum CodingKeys: String, CodingKey {
        case token, logprob, bytes
        case topLogprobs = "top_logprobs"
    }
}

// MARK: - TopLogprobs
struct TopLogprobs: Decodable {
    let token: String?
    let logprob: Double?
    let bytes: [Int]?
}

// MARK: - Usage
struct Usage: Codable {
    let promptTokens, completionTokens, totalTokens: Int?

    enum CodingKeys: String, CodingKey {
        case promptTokens = "prompt_tokens"
        case completionTokens = "completion_tokens"
        case totalTokens = "total_tokens"
    }
}
