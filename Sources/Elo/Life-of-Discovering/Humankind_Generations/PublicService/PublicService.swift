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
}

struct Words_WidelyKnown_Rank_Managing: Require_PublicService, Has_Drawbacks, Architectural {
    var drawbacks: EloSet<String> = {
        var tmp = EloSet<String>()
        tmp.append("Plagued by ill-tasted meaning and hypocritical product/service")
        tmp.append("Popular-will is obstructed or wasted")
        tmp.append("Myopic")
        tmp.append("Floating")
        tmp.append("Abused")
        tmp.append("Illusory")
        tmp.append("Individual's Time is Abused")
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        return tmp
    }()
    
    var efficiency: Efficiency = .terrible
    
    // Scientific_Public_World_built_by_Public_Language_built_from_Science
}
