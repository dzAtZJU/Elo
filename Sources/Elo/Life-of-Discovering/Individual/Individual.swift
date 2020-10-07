//
//  TheIndividual.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/7.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//

struct Life_of_Discovering: IsBattle {
    var red: [Force] = [Track()]
    
    var blue: [Force] = [Drowsiness(), Intimate_Interaction()]
    
    var immersions: [Immersion] = {
        var tmp = [Immersion]()
        return tmp
    }()
    
    var interruptions = Interruptions()
}

protocol Indicator: Proper {
    var indicates: Proper? {
        get
    }
}
extension Indicator {
    var indicates: Proper? {
        nil
    }
}

public protocol Operable {
    var handler: EloSet<IndividualAble> {
        get
    }
}

public protocol IndividualAble {}

protocol IndArchitectural {
    var multiThreading: Int {
        get
    }
    
    var inMemoryThings: String {
        get
    }
}

extension Life_of_Discovering: IndArchitectural {
    var multiThreading: Int {
        1
    }
    
    var inMemoryThings: String {
        "Two Days"
    }
}

protocol Immersion: Proper {}
