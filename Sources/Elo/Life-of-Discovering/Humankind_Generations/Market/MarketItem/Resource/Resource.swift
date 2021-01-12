//
//  Resource.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/22.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

struct Hoodie: Resource {}

struct Headscarf: Resource {}

struct ThrowPillow: Resource {
    
}

struct Earplug: Resource {
    
}

struct Blindfold: Resource {
    
}

struct ReedDiffuser: Resource {
    
}

struct Pillow: Resource, Has_Criterias, Operable {
    var criterias:  [Any] = {
        var tmp =  [Any]()
        tmp.append(SoftFit_and_FullTenderSupport())
        tmp.append("足夠的高度")
        return tmp
    }()
    
    var handler: [Task] = {
        var tmp = [Task]()
        tmp.append(肩也要枕())
        tmp.append(小腹肌肉())
        return tmp
    }()
    
    struct 肩也要枕: IndividualAble {}
    struct 小腹肌肉: IndividualAble {}
}

struct Mattress: Resource, Has_Criterias {
    var criterias: [Any] = {
        var tmp = [Any]()
        tmp.append(SoftFit_and_FullTenderSupport())
        return tmp
    }()
}
struct SoftFit_and_FullTenderSupport {}

struct Air_Conditioning: Resource, Has_Criterias {
    var criterias: [Any] = {
        var tmp = [Any]()
        tmp.append("Gentle wind that is not against head")
        return tmp
    }()
}

struct Air_Purifying: Resource {}

struct Waist_Cushion: Resource {}


struct Diet: Resource, IndividualAble {}

struct Coffee: Resource, IndividualAble {}

struct Long_Acting_Drug: Resource, MicroEnvironment {}

struct Fragrance: Resource, Task {}
