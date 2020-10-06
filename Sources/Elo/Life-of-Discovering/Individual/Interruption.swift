//
//  Interruption.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/6.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

struct Interruptions: IsSet {
    var elements: EloSet<Text> = {
        var tmp = EloSet<Text>()
        tmp.append(Anxious())
        tmp.append(Curious())
        tmp.append(Negate_Self())
        tmp.append(DeadLocking())
        return tmp
    }()
}

struct DeepBreath: IndividualAble {}

struct Mindfulness_Deconstruction: IndividualAble {}

struct Drown_In_Content: IndividualAble, Affect_Throughput {
    var items: [Content] = {
        var tmp = [Content]()
        tmp.append(BeachHouse())
        tmp.append(DoctorX())
        tmp.append(Hiperson())
        return tmp
    }()
    
    var effect = Effect.Decrease
}

struct Pacify_BrainWave: IndividualAble {
    
}

struct Dormant: IndividualAble {
        var elements: [IndividualAble] = {
        var tmp = [IndividualAble]()
        tmp.append(Pacify_BrainWave())
        tmp.append(Sleep())
        return tmp
    }()
}

struct Short_Acting_Drug: Resource, IndividualAble {
    
}

struct Sleep: IndividualAble {
    var resources: [Resource] = {
        var tmp = [Resource]()
        tmp.append(Pillow())
        tmp.append(Mattress())
        tmp.append(Earplug())
        tmp.append(Blindfold())
        tmp.append(ThrowPillow())
        tmp.append(Air_Conditioning())
        tmp.append(Waist_Cushion())
        return tmp
    }()
}

struct Anxious: Indicator, Operable, Architectural {
    var indicates: Proper? = Unknown_by_Thinking()
    
    let avoidance: EloSet<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(Bedroom())
        tmp.append(Sleep())
        return tmp
    }()
    
    let throughput = Throughput(max: 1)
    
    let handler: EloSet<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(DeepBreath())
        tmp.append(Drown_In_Content())
        tmp.append(Coffee())
        tmp.append(Mindfulness_Deconstruction())
        tmp.append(Sail_out())
        tmp.append(Dormant())
        tmp.append(Short_Acting_Drug())
        return tmp
    }()
}

struct Sail_out: IndividualAble {
    var item: [String] = {
        var tmp = [String]()
        tmp.append("Turn to Intimate one")
        tmp.append("When 想不通, reach out to seniors for inspiration")
        return tmp
    }()
}

struct Give_Up: IndividualAble {
    
}

struct Curious: Proper, Require_Markets, Operable {
    var markets: [Market] = {
        var tmp = [Market]()
        tmp.append(Content_about_City())
        tmp.append(Adventure_in_City())
        return tmp
    }()
    
    var handler: Array<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(Give_Up())
        return tmp
    }()
}

struct Negate_Self: Proper, Operable {
    var handler: EloSet<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(Watch_Politics_at_Youtube())
        tmp.append(Dormant())
        tmp.append(Cat_Cafe())
        return tmp
    }()
    
    struct Watch_Politics_at_Youtube: IndividualAble {}
}
