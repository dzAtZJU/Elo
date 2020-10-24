//
//  File.swift
//  
//
//  Created by Zhou Wei Ran on 2020/10/6.
//

import Elo_Itself

protocol Mockable {
    var mockings: [MarketItem] {
        get
    }
}

public protocol TimePocket {
    var insertingTasks: [Task] {
        get
    }
}

struct LongHoursWorking: Task {
    var closetoAdventures: [Adventure] = {
        var tmp = [Adventure]()
        tmp.append(WalkableCommunity())
        tmp.append(Bedroom())
        return tmp
    }()
}

struct On_the_Go: TimePocket {
    var insertingTasks: [Task] = {
        var tmp = [Task]()
        tmp.append(Duolingo())
        tmp.append(InUsing_App_Discrimination())
        tmp.append(Watch_Politics_at_Youtube())
        return tmp
        
    }()
}

struct Watch_Politics_at_Youtube: IndividualAble {}
public struct Duolingo: IndividualAble {
    public init() {}
}
public struct InUsing_App_Discrimination: IndividualAble {
    public init() {}
}
