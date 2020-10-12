//
//  Content.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/18.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Content: Resource, Has_Criterias {}

extension Content {
    var criterias: [Any] {
        var tmp = [Any]()
        tmp.append("Closeness and Immediacy over attractiveness")
        tmp.append("Sincerity")
        tmp.append("Emotion")
        tmp.append("Rich Structure")
        tmp.append("Advance_Or_Out")
        return tmp
    }
}

struct BeachHouse: Content {}
struct Hiperson: Content {}
struct DoctorX: Content {}

struct knowledge_dot_ca: Content {
    
}

struct Content_from_Finland: Content {
    var elements: [String] = {
        var tmp = [String]()
        tmp.append("www.visitfinland.com")
        tmp.append("finland.fi")
        tmp.append("a man without past")
        return tmp
    }()
}

struct Content_about_City: Market {
    var resources: [MarketMember] = {
        var tmp = [Resource]()
        tmp.append(knowledge_dot_ca())
        tmp.append(Content_from_Finland())
        return tmp
    }()
    
    var efficiency = Efficiency.ok
}

// https://edu.gcfglobal.org/en/
