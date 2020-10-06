//
//  Economy.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/6.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

struct Economy: Operable {
    var locality = Locality.unsatisfying
    var circuitry = Circuitry()
    var cost = Cost(money: .terrible, efforts: .terrible)
    
    var handler: EloSet<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(Seek())
        tmp.append(Filter())
        tmp.append(Build_NewEconomy())
        tmp.append(Emigrate_to_AnotherEconomy())
        tmp.append(Entrepreneurship())
        return tmp
    }()
    
    struct Seek: IndividualAble {}
    struct Filter: IndividualAble {}
    struct Build_NewEconomy: IndividualAble {}
    struct Emigrate_to_AnotherEconomy: IndividualAble {}
    struct Entrepreneurship: IndividualAble {}
}

