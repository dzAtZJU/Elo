import Elo_Itself

protocol Force {}

protocol IsBattle {
    var red: [Force] {
        get
    }
    
    var blue: [Force] {
        get
    }
}

protocol Has_Weapon {
    var weapons: [Any] {
        get
    }
}

protocol Way_Of_Thinking {}

protocol Constraint: Force {}

protocol Craftsman {
    var repair: [Tool] {
        get
    }
    
    var constrained_by: [Tool] {
        get
    }
}

struct Track: Craftsman, Force {
    var elements: [Any] = {
        var tmp = [Any]()
        tmp.append(Follow_Current_Minor_Feeling())
        return tmp
    }()

    var destination = "Pave all the way of life discovering"

    var repair: [Tool] = {
        var tmp = [Tool]()
        tmp.append(Line_of_Thought())
        return tmp
    }()
    
    var constrained_by: [Tool] {
        repair
    }
}

struct Line_of_Thought: Tool {
    var elements: [Text] = {
        var tmp = [Text]()
        tmp.append(Mission())
        tmp.append(Time_Devoting())
        tmp.append(NorthStar())
        return tmp
    }()
}

struct Mission: Proper, Force {
    let devote_time_and_effort_on = "problems which will repeatedly occur in long-term"
}

struct Time_Devoting: Proper {
    var phases = Phases()
    var deadLocking = DeadLocking()
}

struct Phases: Proper {
    var elements: [Text] = {
        var tmp = [Text]()
        tmp.append({
            var sentence = Sentence(sentence: "Programming Semantics")
            sentence.criterias.append(iOS_App_Development_Skill())
            sentence.criterias.append(Old_World.Market())
            return sentence
            }())
        tmp.append({
            let sentence = Sentence(sentence: "Check Medium & Feedly & Twitter")
            return sentence
            }())
        tmp.append({
            let sentence = Sentence(sentence: "Explore my Things & Bear-Notes")
            return sentence
            }())
        // 激情创作过后是规律生活作息的 phase
        // 激情的消退早于认知
        // phases switching should be gradual
        // 感情冷淡下来后，很难再回头投入了。怎么办？去度假？
        return tmp
    }()
}

struct NorthStar: Proper {
    var elements: [Proper] = {
        var tmp = [Proper]()
        tmp.append(Old_World.Market())
        tmp.append(CirclePopularWill_Statistics())
        return tmp
    }()
}

struct Prejudice: Way_Of_Thinking, Force {}

struct Zero_Tolerance: Force {}

struct Concentration: Constraint {}

struct Indulgence: Force {}

struct Way_of_Relationship: Way_Of_Thinking, Force, IsBattle {
    var red: [Force] = {
        var tmp = [Force]()
        tmp.append(Zero_Tolerance())
        tmp.append(Concentration())
        return tmp
    }()
    
    var blue: [Force] = {
        var tmp = [Force]()
        tmp.append(Indulgence())
        return tmp
    }()
}

struct Thinking_Quality: Architectural, IsBattle {
    let throughput = Throughput(max: 1)
    
    var red: [Force] = {
        var tmp = [Force]()
        tmp.append(Way_of_Relationship())
        return tmp
    }()
    
    var blue: [Force] = {
        var tmp = [Force]()
        tmp.append(Prejudice())
        tmp.append(Go_Insane())
        return tmp
    }()
    
    struct Go_Insane: Force {}
}
struct iOS_App_Development_Skill: Proper {
}
