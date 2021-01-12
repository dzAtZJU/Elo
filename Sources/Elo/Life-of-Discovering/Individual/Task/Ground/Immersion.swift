import Elo_Itself

protocol IndividualCondition: Feeling, Immersion, Task, Has_Tasks {
    var recovering: [Task] {
        get
    }
    
    var saving: [String] {
        get
    }
}

public enum Career_Condition: IndividualCondition {
    var recovering: [Task] {
        []
    }
    
    var saving: [String] {
        []
    }
    
    public var tasks: [Task] {
        []
    }
    
    case Completed
    case Holding
}

public enum Soul_Condition: IndividualCondition {
    case Full
    case Poor
    
    public var approaches: [Approach] {
        return [Cultivating_and_Nurturing(tools: [平行世界()])]
    }
    
    public var tasks: [Task] {
        [Synchronize_Body_and_Brain()]
    }
    
    var recovering: [Task] {
        var tmp = [Task]()
        tmp.append(Sail_out())
        return tmp
    }
    
    var saving: [String] {
        []
    }
    
    public var consequence_of_failing: Any? {
        DeadLocking()
    }
}

public enum Brain_Body_Condition: IndividualCondition {
    public var tasks: [Task] {
        [Synchronize_Body_and_Brain()]
    }
    
    public var recovering: [Task] {
        var tmp = [Task]()
        tmp.append(Spa())
        tmp.append(Chat())
        tmp.append(Walk_with_Friend())
        tmp.append(Walk_Dog())
        return tmp
    }
    
    public var saving: [String] {
        var tmp = [String]()
        tmp.append("Loose Eyeglasses")
        tmp.append("Loose Headphone")
        return tmp
    }
    
    public var consequence_of_failing: Any? {
        DeadLocking()
    }
    
    case Full
    case Poor
}

protocol Require_Immersion {
    var immersions: [Immersion] {
        get
    }
}

public struct Sense_of_Security: Immersion {
    public init() {}
}

public struct Sense_of_Intimacy: Immersion {
    public init() {}
}

public protocol MicroEnvironment {}
