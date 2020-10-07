//
//  Immersion.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/6.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

public enum Brain_Body_Condition: Immersion, Operable {
    public var handler: EloSet<IndividualAble> {
        var tmp = EloSet<IndividualAble>()
        tmp.append(Sleep())
        return tmp
    }
    
    public var saving: [String] {
        var tmp = [String]()
        tmp.append("Loose Eyeglasses")
        tmp.append("Loose Headphone")
        return tmp
    }
    
    case Full
    case Poor
}

struct Sense_of_Security: Immersion, Require_Intimacy {
    var mockings: EloSet<MarketMember> = {
        var tmp = EloSet<MarketMember>()
        tmp.append(Hoodie())
        tmp.append(BeachHouse())
        tmp.append(Dark())
        tmp.append(Bedroom())
        tmp.append(Long_Acting_Drug())
        tmp.append(ReedDiffuser())
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        return tmp
    }()
    
    var efficiency = Efficiency.terrible
    
    struct Dark: Adventure, MicroEnvironment {}
}

struct Sense_of_Intimacy: Immersion, Require_Intimacy {
    var mockings: EloSet<MarketMember> = {
        var tmp = EloSet<MarketMember>()
        tmp.append(ThrowPillow())
        tmp.append(Cat_Cafe())
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Meetup())
        return tmp
    }()
    
    var efficiency = Efficiency.terrible
}

protocol MicroEnvironment {}
