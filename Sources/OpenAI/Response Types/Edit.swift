//
//  File.swift
//  
//
//  Created by Nurzhan Duisembayev on 14.02.2023.
//

import Foundation

public struct Edit: Decodable {
    let object: String
    let created: Int
    let choices: [Choice]
    let usage: Usage
    
    var createdDate: Date {
        Date(timeIntervalSince1970: TimeInterval(created))
    }
    
    public struct Choice: Decodable {
        let text: String
        let index: Int
    }
    
    public struct Usage: Decodable {
        let prompTokens: Int
        let completionTokens: Int
        let totalTokens: Int
        
        private enum CodingKeys: String, CodingKey {
            case prompTokens = "prompt_tokens"
            case completionTokens = "completion_tokens"
            case totalTokens = "total_tokens"
        }
    }
}
