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

//TODO
//var tmp = [Task]()
//tmp.append(BBut())
//tmp.append(Spa())
//tmp.append(Luna())
