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

extension Intimate_One: Overwhelm {
    var drives: [SelfCare] {
        [SkinCare()]
    }
    
    struct SkinCare: SelfCare, TimePocket {
        var perspective: Perspective? = Intimate_One()
        var insertingTasks: [Task] = [Watch_Politics_at_Youtube()]
    }
}


