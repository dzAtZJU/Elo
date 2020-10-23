//
//  Interruption.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/6.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

struct Interruptions {
    var elements: [Any] = {
        var tmp = [Any]()
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
        tmp.append(Khruangbin())
        tmp.append(Nujabes())
        tmp.append(BeachHouse())
        tmp.append(Hiperson())
        tmp.append(DoctorX())
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
    
    var interruptions: [Text] = {
        var tmp = [Text]()
        tmp.append(Mosquito())
        tmp.append(Stomach())
        tmp.append(Urinate_and_Defecate())
        return tmp
    }()
    
    struct Mosquito: Text {}
    struct Stomach: Text {}
    struct Urinate_and_Defecate: Text {}
}

struct Anxious: Indicator, Operable, Architectural {
    var indicates: Proper? = Unknown_by_Thinking()
    
    let avoidance: [IndividualAble] = {
        var tmp = [IndividualAble]()
        tmp.append(Control_SocialInvolvement_Rate())
        tmp.append(Bedroom())
        tmp.append(Sleep())
        return tmp
    }()
    
    let throughput = Throughput(max: 1)
    
    let handler: [Task] = {
        var tmp = [Task]()
        tmp.append(DeepBreath())
        tmp.append(Coffee())
        tmp.append(Drown_In_Content())
        tmp.append(Mindfulness_Deconstruction())
        tmp.append(Sail_out())
        tmp.append(Dormant())
        tmp.append(Short_Acting_Drug())
        return tmp
    }()
    
    struct Control_SocialInvolvement_Rate: IndividualAble {}
}

struct Sail_out: SymbiosisAble {
    var item: [String] = {
        var tmp = [String]()
        tmp.append("Turn to Intimate one")
        tmp.append("When 想不通, reach out to seniors for inspiration")
        return tmp
    }()
}

struct Give_Up: IndividualAble {}

extension Curious: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Give_Up())
        return tmp
    }
}

struct Negate_Self: Proper, Operable {
    var handler: [Task] = {
        var tmp = [Task]()
        tmp.append(Watch_Politics_at_Youtube())
        tmp.append(Dormant())
        tmp.append(Cat_Cafe())
        return tmp
    }()
}
