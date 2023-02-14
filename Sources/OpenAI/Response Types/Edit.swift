//
//  File.swift
//  
//
//  Created by Nurzhan Duisembayev on 14.02.2023.
//

import Foundation

public struct Edit: Decodable {
    public let object: String
    public let created: Int
    public let choices: [Choice]
    public let usage: Usage
    
    public var createdDate: Date {
        Date(timeIntervalSince1970: TimeInterval(created))
    }
    
    public struct Choice: Decodable {
        public let text: String
        public let index: Int
    }
    
    public struct Usage: Decodable {
        public let prompTokens: Int
        public let completionTokens: Int
        public let totalTokens: Int
        
        private enum CodingKeys: String, CodingKey {
            case prompTokens = "prompt_tokens"
            case completionTokens = "completion_tokens"
            case totalTokens = "total_tokens"
        }
    }
}
