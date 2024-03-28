//
//  ChatRepositoryProtocol.swift
//  AIChatbot
//
//  Created by Doyoung An on 3/28/24.
//

protocol ChatRepositoryProtocol: AnyObject {
    func fetchAllMessagesFromDB() async -> [Message]
    func processMessageWithRemote(content: String) async -> Message
    func updateAllMessagesInDB(updateData: [Message]) async
}
