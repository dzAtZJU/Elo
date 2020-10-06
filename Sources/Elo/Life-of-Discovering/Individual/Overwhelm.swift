//
//  Overwhelm.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/10/3.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Overwhelm: Force {
    var drives: [SelfCare] {
        get
    }
}
protocol SelfCare: Task {}

struct Drowsiness: Overwhelm {
    var drives: [SelfCare] = [Sleep()]
}
extension Sleep: SelfCare {
    var perspective: Perspective? {
        nil
    }
}

struct Intimate_Interaction: Overwhelm {
    var drives: [SelfCare] = [SkinCare()]
    
    struct SkinCare: SelfCare {
        var perspective: Perspective? = Intimate_One()
    }
}


