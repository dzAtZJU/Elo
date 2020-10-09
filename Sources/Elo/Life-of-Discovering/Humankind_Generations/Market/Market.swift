//
//  Market.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/5.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

public protocol MarketMember {}

protocol Market {
    var resources: [MarketMember] {
        get
    }
    
    var efficiency: Efficiency {
        get
    }
}

protocol Require_Markets {
    var markets: [Market] {
        get
    }
}
