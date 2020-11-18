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
    case Completed
    case Holding
}

public enum Soul_Condition: IndividualCondition, Require_Immersions {
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
    
    public var immersions: [Immersion] {
        [Sense_of_Intimacy(), Sense_of_Security()]
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

public struct Sense_of_Security: Immersion, Require_Intimacy {
    public init() {}
    
    var mockings: [MarketItem] = {
        var tmp = [MarketItem]()
        tmp.append(Hheadscarf())
        tmp.append(Hoodie())
        tmp.append(Nujabes())
        tmp.append(BeachHouse())
        tmp.append(Dark())
        tmp.append(Bedroom())
        tmp.append(Long_Acting_Drug())
        tmp.append(ReedDiffuser())
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        return tmp
    }()
    
    var efficiency = Efficiency.terrible
    
    struct Dark: Adventure, MicroEnvironment {}
}

public struct Sense_of_Intimacy: Immersion, Require_Intimacy {
    public init() {}
    
    var mockings: [MarketItem] = {
        var tmp = [MarketItem]()
        tmp.append(ThrowPillow())
        tmp.append(Cat_Cafe())
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Meetup())
        return tmp
    }()
    
    var efficiency = Efficiency.terrible
}

public protocol MicroEnvironment {}
