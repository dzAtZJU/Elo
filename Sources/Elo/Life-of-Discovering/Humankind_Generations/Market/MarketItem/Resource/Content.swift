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

protocol Music: Content {}
struct BeachHouse: Music {}
struct Hiperson: Music {}
struct Khruangbin: Music {}
struct Nujabes: Music {}

protocol Television_and_Movie: Content, Infra {}
struct DoctorX: Television_and_Movie {}
struct knowledge_dot_ca: Television_and_Movie {}

struct Content_from_Finland: Content {
    var elements: [String] = {
        var tmp = [String]()
        tmp.append("www.visitfinland.com")
        tmp.append("finland.fi")
        tmp.append("a man without past")
        return tmp
    }()
}

// https://edu.gcfglobal.org/en/
