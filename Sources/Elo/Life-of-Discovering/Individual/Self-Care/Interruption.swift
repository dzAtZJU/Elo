import Elo_Itself

struct Interruptions {
    var elements: [Any] = {
        var tmp = [Any]()
        tmp.append(Anxious())
        tmp.append(Repulsion())
        tmp.append(Agitated())
        tmp.append(Curious())
        tmp.append(Negate_Self())
        tmp.append(DeadLocking())
        return tmp
    }()
}

extension Anxious: Operable, Architectural {
    var avoidance: [IndividualAble] {
        var tmp = [IndividualAble]()
        tmp.append(Control_SocialInvolvement_Rate())
        tmp.append(Bedroom())
        tmp.append(Sleep())
        return tmp
    }
    
    var throughput: Throughput {
        Throughput(max: 1)
    }
    
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(DeepBreath())
        tmp.append(Coffee())
        tmp.append(Drown_In_Content())
        tmp.append(Mindfulness_Deconstruction())
        tmp.append(Sail_out())
        tmp.append(Dormant())
        tmp.append(Short_Acting_Drug())
        return tmp
    }
    
    struct Control_SocialInvolvement_Rate: IndividualAble {}
}

extension Agitated: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Shower())
        return tmp
    }
}

extension Curious: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Give_Up())
        return tmp
    }
}

extension DeadLocking: Operable, Require_PublicService {
    var publicServices: [PublicService] {
        var tmp = [PublicService]()
        tmp.append(Meetup())
        return tmp
    }
    
    var efficiency: Efficiency {
        Efficiency.terrible
    }
    
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Turn_to_Elo())
        tmp.append(Dormant())
        return tmp
    }
    
    var turnToSymbiont: Symbiont {
        Dream()
    }
}

extension Negate_Self: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Watch_Politics_at_Youtube())
        tmp.append(Drown_In_Content())
        tmp.append(Cat_Cafe())
        tmp.append(Intimate_One())
        tmp.append(Dormant())
        tmp.append(Turn_to_Elo())
        return tmp
    }
}

extension 感情冷淡期: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(ChangeInto_Fresh_Color_Theme())
        tmp.append(Visit_Related_Beautiful_World())
        return tmp
    }
}
