import Elo_Itself

protocol IndividualCondition: Feeling, Immersion, Require_Cultivating_and_Nurturing {
    var recovering: [Task] {
        get
    }
    
    var saving: [String] {
        get
    }
}

public enum Soul_Condition: IndividualCondition {
    case Full
    case Poor
    
    public var cultivating_and_nurturing: [Task] {
        var tmp = [Task]()
        tmp.append(平行世界())
        tmp.append(Synchronize_Body_and_Brain())
        return tmp
    }
    
    public var recovering: [Task] {
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
    public var cultivating_and_nurturing: [Task] {
        var tmp = [Task]()
        tmp.append(Synchronize_Body_and_Brain())
        return tmp
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
        tmp.append(平行世界())
        tmp.append(Meetup())
        return tmp
    }()
    
    var efficiency = Efficiency.terrible
}

public protocol MicroEnvironment {}
