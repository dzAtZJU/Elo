//
//  Elo.swift
//  Semantics
//
//  Created by Zhou Wei Ran on 2020/9/2.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//

// MARK: Structure
protocol IsList {
    var elements: [Text] {
        get
    }
}
public typealias EloSet = Array
protocol IsSet {
    var elements: EloSet<Text> {
        get
    }
}

// MARK: Grammar
protocol Text {}

protocol Proper: Text {}

protocol Floating: Text {
    var anchor: Proper {
        get
    }
}

protocol ADJ: Text {
    
}

protocol ADV: Text {
    
}

struct Sentence: Text {
    var text: String {
        sentence
    }
    
    let sentence: String
    var criterias = EloSet<Proper>()
}

protocol Has_Criterias {
    var criterias: EloSet<String> {
        get
    }
}

protocol Has_Drawbacks {
    var drawbacks: EloSet<String> {
        get
    }
}

protocol WordNode_Link {
    
}

struct Experience: WordNode_Link, Has_Drawbacks {
    var drawbacks: EloSet<String> = {
        var tmp = EloSet<String>()
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
    var drawbacks: EloSet<String> = {
        var tmp = EloSet<String>()
        tmp.append("Depends on family of origin")
        return tmp
    }()
}

