//
//  File.swift
//  
//
//  Created by Zhou Wei Ran on 2020/10/12.
//
import Elo_Itself

struct Life_of_Subverter: In_Symbiosis {
    var symbionts: [Symbiont] = [WeWork()]
    
    var challenge = Unknowable_and_Uncertain_Situations()
}

struct TemporalSpace_Arrangement: Has_Criterias {
    var criterias: [Any] = [Temperament()]
}

struct Situation_Handling: Has_Criterias {
    var criterias: [Any] = [Temperament()]
}

enum Commonality {
    case Temperament
    case Taste
    case Value_and_Attitude
}

struct WeWork: Community, Symbiont {
    var flowsBetweenSymbiosis: [Indicator] = [Support(), Encourage()]
    
    var memberAmount: MemberAmount = .LocalCommunity
    var flowsInCommunity: [Flow] = [Support(), Encourage(), Retain()]
    
    struct Support: Indicator {}
    struct Encourage: Indicator {}
    struct Retain: Indicator {}
    
    var semantic_product: String? = nil
    var obstacles: [String] = []
}
