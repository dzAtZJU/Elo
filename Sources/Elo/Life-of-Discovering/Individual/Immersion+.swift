//
//  Immersion.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/6.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

public enum Soul_Brain_Body_Condition: Immersion, Operable {
    public var handler: [Task] {
        var tmp = [Task]()
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

public struct Sense_of_Security: Immersion, Require_Intimacy {
    public init() {}
    
    var mockings: [MarketItem] = {
        var tmp = [MarketItem]()
        tmp.append(Hheadscarf())
        tmp.append(Hoodie())
        tmp.append(Nujabes())
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

public struct Sense_of_Intimacy: Immersion, Require_Intimacy {
    public init() {}
    
    var mockings: [MarketItem] = {
        var tmp = [MarketItem]()
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
