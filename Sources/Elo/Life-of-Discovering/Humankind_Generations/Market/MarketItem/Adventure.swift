//
//  Adventure.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/18.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Adventure: MarketItem {}

struct Cat_Cafe: Adventure, IndividualAble {}

struct Bedroom: Adventure, MicroEnvironment, IndividualAble {}

struct WalkableCommunity: Adventure, MicroEnvironment, Require_PublicService {
    var publicServices: [PublicService] = [Walkscore(), GlobalRentComparison()]
    
    var efficiency: Efficiency = .terrible
    
    struct Walkscore: PublicService {}
    struct GlobalRentComparison: PublicService {}
}

struct EF_日语游学: Adventure {}
