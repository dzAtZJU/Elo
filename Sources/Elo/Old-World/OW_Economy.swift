//
//  Economy.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/20.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
enum Old_World {
    struct 刚需 {
        let a = "most Unimaginative"
        let b = "most Impersonal"
    }
}

extension Old_World {
    struct Market: Proper, Economy_Participant {
        var visualAngles: [VisualAngle] = {
            var tmp = [VisualAngle]()
            tmp.append(MassMedia())
            return tmp
        }()
        
        var segmentations: [MarketSegmentation] = {
            var tmp = [MarketSegmentation]()
            tmp.append(ToI())
            tmp.append(独居成年人())
            return tmp
        }()
    }
}
