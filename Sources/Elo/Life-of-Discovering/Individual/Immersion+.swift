import Elo_Itself

public enum Soul_Brain_Body_Condition: Feeling, Immersion, Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        // Brain, Body
        tmp.append(Chat())
        tmp.append(Walk_with_Friend())
        tmp.append(Walk_Dog())
        tmp.append(Sleep())
        tmp.append(王者榮耀())
        //Soul
        tmp.append(Sail_out())
        return tmp
    }
    
    public var consequence_of_failing: Any? {
        DeadLocking()
    }
    
    public var saving: [String] {
        var tmp = [String]()
        tmp.append("Loose Eyeglasses")
        tmp.append("Loose Headphone")
        return tmp
    }
    
    case Full
    case Poor
    
    struct Chat: Task {}
    struct Walk_with_Friend: Task {}
    struct Walk_Dog: Task {}
    struct 王者榮耀: Task {}
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
