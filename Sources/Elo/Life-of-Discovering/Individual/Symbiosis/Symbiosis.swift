//
//  Symbiosis.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/24.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol In_Symbiosis {
    var symbionts: [Symbiont] {
        get
    }
}

protocol Symbiont: Plant, Require_Detach_and_Witness {
    var flows: [Indicator] {
        get
    }
}

struct Dream: Symbiont {
    var flows: [Indicator] = []
    
    var obstacles: [String] = []
    
    var semantic_product: String? = nil
}

struct Life_of_SideProject: Symbiont {
    var obstacles: [String] = ["the world of computing is full of noise and complications"]
    
    var semantic_product: String? = "iOS App Development Semantics"
    
    var flows: [Indicator] = [Anxious()]
}

struct Elo: Symbiont {
    var obstacles: [String] = []
    
    var semantic_product: String? = "Elo Runtime"
    
    var flows: [Indicator] = []
}

public struct Intimate_One: Symbiont, Perspective, Task {
    public init() {}
    
    public var obstacles: [String] = ["The possibility of partner leaving drive us to please"]
    
    public var semantic_product: String? = "Social Skill"
    
    var flows: [Indicator] = [Anxious()]
}

protocol Require_Intimacy: Mockable, Require_PublicService {}

extension Life_of_Discovering: In_Symbiosis {
    var symbionts: [Symbiont] {
        [Elo(),
         Dream(),
         Life_of_SideProject(),
         Intimate_One()]
    }
}
