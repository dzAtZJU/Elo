//
//  File.swift
//  
//
//  Created by Zhou Wei Ran on 2020/10/12.
//

import Elo_Itself

struct DiversityRequired_Clustering: Infra {}

struct GlobalService: Infra {
    var resources: [Resource] = [AppleID(), NetFlix()]
    
    struct AppleID: Resource {}
    struct NetFlix: Resource {}
}
