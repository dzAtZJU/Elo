//
//  Resource.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/22.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//

protocol Resource: MarketMember {
    
}

struct Hoodie: Resource {
}

struct ThrowPillow: Resource {
    
}

struct Earplug: Resource {
    
}

struct Blindfold: Resource {
    
}

struct ReedDiffuser: Resource {
    
}

struct Pillow: Resource, Has_Criterias, Operable {
    var criterias: EloSet<String> = {
        var tmp = EloSet<String>()
        tmp.append(Fit_and_Soft_and_Support_and_Tender().name)
        return tmp
    }()
    
    var handler: EloSet<IndividualAble> = {
        var tmp = EloSet<IndividualAble>()
        tmp.append(肩也要枕())
        tmp.append(小腹肌肉())
        return tmp
    }()
    
    struct 肩也要枕: IndividualAble {}
    struct 小腹肌肉: IndividualAble {}
}

struct Mattress: Resource, Has_Criterias {
    var criterias: EloSet<String> = {
        var tmp = EloSet<String>()
        tmp.append(Fit_and_Soft_and_Support_and_Tender().name)
        return tmp
    }()
}
struct Fit_and_Soft_and_Support_and_Tender {
    var name = "Fit_and_Soft_and_Support_and_Tender"
}

struct Air_Conditioning: Resource, Has_Criterias {
    var criterias: EloSet<String> = {
        var tmp = EloSet<String>()
        tmp.append("Gentle wind that is not against head")
        return tmp
    }()
}

struct Waist_Cushion: Resource {}

struct Coffee: Resource, IndividualAble {}
