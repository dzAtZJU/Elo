import Elo_Itself

struct Interruptions: Under_Expectation {
    var elements: [Any] = {
        var tmp = [Any]()
        tmp.append(Anxious())
        tmp.append(Waiting())
        tmp.append(Repulsion())
        tmp.append(Agitated())
        tmp.append(Curious())
        tmp.append(Negate_Self())
        tmp.append(DeadLocking())
        return tmp
    }()
}

extension DriedUp: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Elo())
        tmp.append(Review_Bear())
        tmp.append(TED())
        return tmp
    }
    
    struct TED: Task {}
    struct Review_Bear: Task {}
    struct 正邪: Task {}
}

extension Tired: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Shower())
        tmp.append(SkinCare())
        tmp.append(TurnTo_Familiar_and_Accessible())
        return tmp
    }
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
    
    public var cause: [Any] {
        var tmp = [Any]()
        tmp.append(Facing_New())
        return tmp
    }
    
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Dont_Jump())
        tmp.append(DeepBreath())
        tmp.append(Fragrance())
        tmp.append(Coffee())
        tmp.append(Shower())
        tmp.append(TurnTo_Familiar_and_Accessible())
        tmp.append(Mindfulness_Deconstruction())
        tmp.append(Dormant())
        tmp.append(Sail_out())
        tmp.append(Short_Acting_Drug())
        return tmp
    }
    
    struct Control_SocialInvolvement_Rate: IndividualAble {}
    
    struct Facing_New {}
    
    struct Dont_Jump: Task {}
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

extension Creative_Desire: Require_Immersion {
    var immersions: [Immersion] {
        [Soul_Condition.Full]
    }
}
