//
//  Elo.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/2.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//

import Elo_Itself

public protocol Text {}

public protocol Proper: Text {}

struct Sentence: Text {
    var text: String {
        sentence
    }
    
    let sentence: String
    var criterias = [Proper]()
}

protocol WordNode_Link {}

struct Experience: WordNode_Link, Has_Drawbacks {
    var drawbacks: [String] = {
        var tmp = [String]()
        tmp.append("May require repeated expriences to establish relevance")
        tmp.append("Opportunity to exprience may be rare")
        return tmp
    }()
}

struct Consulting: WordNode_Link {
    
}

protocol WordGraph_Connecting {
    
}

struct Be_taken_care_of: WordGraph_Connecting, Has_Drawbacks {
    var drawbacks: [String] = {
        var tmp = [String]()
        tmp.append("Depends on family of origin")
        return tmp
    }()
}

