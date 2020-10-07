//
//  File.swift
//  
//
//  Created by Zhou Wei Ran on 2020/10/6.
//

import Elo_Itself

public protocol TimePocket {
    var insertingTask: Task {
        get
    }
}

struct LongHoursWorking: Task {
    var closetoAdventures: [Adventure] = {
        var tmp = [Adventure]()
        tmp.append(WeWork())
        tmp.append(WalkableCommunity())
        tmp.append(Bedroom())
        return tmp
    }()
}

struct Watch_Politics_at_Youtube: Task, IndividualAble {}

struct On_the_Go: TimePocket {
    var insertingTask: Task = Watch_Politics_at_Youtube()
}
