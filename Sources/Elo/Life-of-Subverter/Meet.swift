//
//  File.swift
//  
//
//  Created by Zhou Wei Ran on 2020/10/12.
//
import Elo_Itself

protocol Community {
    var memberAmount: MemberAmount {
        get
    }
    var flowsInCommunity: [Flow] {
        get
    }
}

protocol Flow {}

enum MemberAmount {
    case Household
    case LocalCommunity
}

struct Household: Community {
    var memberAmount: MemberAmount = .Household
    var flowsInCommunity: [Flow] = [Care()]
    
    struct Care: Flow {}
}

struct School: Community {
    var memberAmount: MemberAmount
    var flowsInCommunity: [Flow] = [Entrusted()]
    
    struct Entrusted: Flow {}
}

struct Company: Community {
    var memberAmount: MemberAmount
    var flowsInCommunity: [Flow] = [Task()]
    
    struct Task: Flow {}
}

//thrown fit
//
//discover cultivate

enum Community_Media {
    case Create_Dialogue
}

