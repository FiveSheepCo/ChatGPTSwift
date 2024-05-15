//
//  File.swift
//  
//
//  Created by Marco Quinten on 29.11.23.
//

import Foundation

public struct CustomModel {
    public let name: String
    public let contextWindow: Int
    
    public init(name: String, contextWindow: Int) {
        self.name = name
        self.contextWindow = contextWindow
    }
}

public enum ChatGPTModel {
    
    // GPT-4 Omni
    case gpt4o
    
    // GPT-4 Turbo
    case gpt4_turbo
    case gpt4_turbo_preview
    case gpt4_turbo_vision_preview
    case gpt4_turbo_0125_preview
    case gpt4_turbo_1106_preview
    
    // GPT-4
    case gpt4
    case gpt4_32k
    case gpt4_0613
    case gpt4_32k_0613
    
    // GPT-3.5 Turbo
    case gpt3_5_turbo_0125
    case gpt3_5_turbo_1106
    case gpt3_5_turbo
    case gpt3_5_turbo_16k
    case gpt3_5_turbo_instruct
    
    // Custom
    case custom(CustomModel)
}

extension ChatGPTModel {
    var modelName: String {
        switch self {
            case .gpt4o:
                "gpt-4o"
            case .gpt4_turbo:
                "gpt-4-turbo"
            case .gpt4_turbo_preview:
                "gpt-4-turbo-preview"
            case .gpt4_turbo_vision_preview:
                "gpt-4-vision-preview"
            case .gpt4_turbo_0125_preview:
                "gpt-4-0125-preview"
            case .gpt4_turbo_1106_preview:
                "gpt-4-1106-preview"
            case .gpt4:
                "gpt-4"
            case .gpt4_32k:
                "gpt-4-32k"
            case .gpt4_0613:
                "gpt-4-0613"
            case .gpt4_32k_0613:
                "gpt-4-32k-0613"
            case .gpt3_5_turbo_0125:
                "gpt-3.5-turbo-0125"
            case .gpt3_5_turbo_1106:
                "gpt-3.5-turbo-1106"
            case .gpt3_5_turbo:
                "gpt-3.5-turbo"
            case .gpt3_5_turbo_16k:
                "gpt-3.5-turbo-16k"
            case .gpt3_5_turbo_instruct:
                "gpt-3.5-turbo-instruct"
            case .custom(let model):
                model.name
        }
    }
    
    var contextWindow: Int {
        switch self {
            case .gpt4o, .gpt4_turbo, .gpt4_turbo_preview, .gpt4_turbo_vision_preview, .gpt4_turbo_0125_preview, .gpt4_turbo_1106_preview:
                128_000
            case .gpt4, .gpt4_0613:
                8_192
            case .gpt4_32k, .gpt4_32k_0613:
                32_768
            case .gpt3_5_turbo_1106, .gpt3_5_turbo_0125, .gpt3_5_turbo_16k:
                16_385
            case .gpt3_5_turbo, .gpt3_5_turbo_instruct:
                4_096
            case .custom(let model):
                model.contextWindow
        }
    }
}
