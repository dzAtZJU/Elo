//
//  Suspicious_Language.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/17.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
extension Old_World {
    enum Assumption_Motto {
        case Prejudice_Based
        case Critic_Theory
    }
    
    struct World: IsSpectrum {
        var bands: [Economy_Participant] = {
            var tmp = [Economy_Participant]()
            tmp.append(Peer())
            tmp.append(Predecessor())
            tmp.append(Old_World.Market())
            return tmp
        }()
    }
}
