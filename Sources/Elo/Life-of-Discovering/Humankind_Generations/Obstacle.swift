//
//  Reality.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/23.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Reflect_EverlastingValue {}

protocol Phenomena {
    var humankindable: Humankindable {
        get
    }
}

struct Unknown_by_Thinking: Proper, Phenomena {
    var humankindable: Humankindable = PlaceHolder()
}
struct PlaceHolder: Humankindable {
    
}

struct Iceberg: Phenomena {
    var humankindable: Humankindable = Dig()
}
struct Dig: Humankindable {
    
}

struct Double_Edged_Sword: Phenomena {
    var humankindable: Humankindable = Harness()
}
struct Harness: Humankindable {
    
}


