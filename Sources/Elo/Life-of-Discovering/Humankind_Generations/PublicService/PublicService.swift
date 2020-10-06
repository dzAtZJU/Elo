//
//  PublicSpace.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/22.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol PublicService {}
protocol PSArchitectural: Architectural {
    var efficiency: Efficiency {
        get
    }
}
protocol Require_PublicService: Proper, PSArchitectural {
    var publicServices: [PublicService] {
        get
    }
}

struct Meetup: PublicService {}

struct CirclePopularWill_Statistics: Reflect_EverlastingValue, Require_PublicService {
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Appannie())
        return tmp
    }()
    
    var efficiency: Efficiency = .terrible
    
    struct Appannie: PublicService {}
    struct Sumally: PublicService {}
    
    // Scientific_Public_World_built_by_Public_Language_built_from_Science
    // Emotion_Drive_Technique
    // Keyword is plagued by ill-tasted meaning and hypocritical product/service
    // Popular-will is obstructed or wasted
    
    // Start, Study, Live in US, Japan Market
    
    // Only Make money in China-Mainland Market while wearing mask
    
    // Rank is resource. Well-Known is resource
}
