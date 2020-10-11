//
//  PublicSpace.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/22.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol PublicService {}
protocol PSArchitectural: Architectural {
    var efficiency: Efficiency {
        get
    }
}
protocol Require_PublicService: Proper, PSArchitectural {
    var publicServices: [PublicService] {
        get
    }
}

struct CirclePopularWill_Statistics: Reflect_EverlastingValue, Require_PublicService {
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Appannie())
        return tmp
    }()
    
    var efficiency: Efficiency = .terrible
    
    struct Appannie: PublicService {}
    struct Sumally: PublicService {}
}

protocol Popular_Connectoin: PublicService, Has_Drawbacks {}
extension Popular_Connectoin {
    public var drawbacks: [String] {
        var tmp = [String]()
        tmp.append("Plagued by ill-tasted meaning and hypocritical product/service")
        tmp.append("Popular-will is obstructed or wasted")
        tmp.append("Myopic")
        tmp.append("Floating")
        tmp.append("Abused")
        tmp.append("Illusory")
        tmp.append("Individual's Time is Abused")
        return tmp
    }
}

public struct Concept: Popular_Connectoin, Has_Tasks {
    public init() {}
    public  var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(CheckConnection())
        tmp.append(AskForMethod())
        tmp.append(RefineMethod())
        return tmp
    }()
    
    public struct CheckConnection: Task {}
    public struct AskForMethod: Task {}
    public struct RefineMethod: Task {}
}

struct WidelyKnown: Popular_Connectoin {}

struct Rank: Popular_Connectoin {}

struct Hall: Popular_Connectoin {}

struct Dictionary: Popular_Connectoin {}

struct Satirical_Art: Popular_Connectoin {}

struct Rules_Laws: Popular_Connectoin {}

struct Popular_Net: Require_PublicService {
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Concept())
        tmp.append(WidelyKnown())
        tmp.append(Rank())
        tmp.append(Hall())
        tmp.append(Dictionary())
        tmp.append(Satirical_Art())
        tmp.append(Rules_Laws())
        return tmp
    }()
    
    var efficiency: Efficiency = .terrible
    
    // Scientific_Public_World_built_by_Public_Language_built_from_Science
}

struct Meetup: PublicService {}

let a = "Commonality leads to Situation"
enum Commonality {
    case Custom
    case Taste
    case Value
    case Local
    case Workplace
}

protocol Community {
    var memberAmount: MemberAmount
    var flows: [Flow]
}

protocol Flow {}

enum MemberAmount {
    case Household
}

struct Household: Community {
    var memberAmount: MemberAmount = .Household
    var flows: [Flow] = []
}

struct School: Community {
    var memberAmount: MemberAmount
    var flows: [Flow] = []
}

struct Class: Community {
    var memberAmount: MemberAmount
    var flows: [Flow] = []
}
