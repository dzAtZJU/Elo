//
//  Adventure.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/18.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Adventure: MarketMember {}

struct Cat_Cafe: Adventure, IndividualAble {}

struct Bedroom: Adventure, MicroEnvironment, IndividualAble {}

struct WeWork: Adventure, MicroEnvironment {}

struct WalkableCommunity: Adventure, MicroEnvironment, Require_PublicService {
    var publicServices: [PublicService] = [Walkscore(), GlobalRentComparison()]
    
    var efficiency: Efficiency = .terrible
    
    struct Walkscore: PublicService {}
    struct GlobalRentComparison: PublicService {}
}

struct Adventure_in_City: Market {
    var criterias: EloSet<String> = {
        var tmp = EloSet<String>()
        return tmp
    }()
    
    var resources: EloSet<MarketMember> = {
        var tmp = EloSet<Adventure>()
        tmp.append(EF_日语游学())
        return tmp
    }()
    
    var efficiency = Efficiency.ok
    
    struct EF_日语游学: Adventure {}
}
