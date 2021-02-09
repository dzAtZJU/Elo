import Elo_Itself

// 面对新任务，一开始会害怕

extension DriedUp: Has_Tasks {
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

extension Tired: Has_Tasks {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Shower())
        tmp.append(SkinCare())
        return tmp
    }
}

extension Depression: Has_Tasks {
    var avoidance: [IndividualAble] {
        var tmp = [IndividualAble]()
        tmp.append(Sleep())
        tmp.append(Diet())
        return tmp
    }
    
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Elo())
        return tmp
    }
}

extension Anxious: Has_Tasks, Architectural {
    var avoidance: [IndividualAble] {
        var tmp = [IndividualAble]()
        tmp.append(Control_SocialInvolvement_Rate())
        tmp.append(Workspace())
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
        tmp.append(Illusion())
        return tmp
    }
        
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(挺胸直腰扩肩())
        tmp.append(PutHandOnChestOrForehead())
        tmp.append(DeepBreath())
        tmp.append(Strong_Sensation())
        tmp.append(AppleMusic())
        tmp.append(Fragrance())
        tmp.append(Coffee())
        tmp.append(Dont_Jump())
        tmp.append(Mindfulness_Deconstruction())
        tmp.append(Shower())
        tmp.append(Sail_out())
        return tmp
    }
    
    struct Control_SocialInvolvement_Rate: IndividualAble {}
    
    struct Facing_New {}
    
    struct Illusion {}
    
    struct Dont_Jump: Task, Has_Tasks {
        var tasks: [Task] = [
            Aesthetic(),
            Savour_and_Reliving_and_Lingering_and_Afterglow(),
        ]
    }
    
    struct Strong_Sensation: LittleHabit, Has_Criterias {
        var criterias: [Any] = ["Loud", "Dense"]
    }
    
    struct Mindfulness_Deconstruction: Activity {}
    
    struct DeepBreath: LittleHabit {
        let items = [
            "吸气，憋住，呼气"
        ]
    }
    
    struct PutHandOnChestOrForehead: LittleHabit {}

    struct 挺胸直腰扩肩: LittleHabit {}
    
    struct Sail_out: LittleHabit {
        var item: [String] = {
            var tmp = [String]()
            tmp.append("Turn to Intimate one")
            tmp.append("When 想不通, reach out to seniors for inspiration")
            return tmp
        }()
    }
}

extension Savour_and_Reliving_and_Lingering_and_Afterglow: Task {}

extension Aesthetic: Task {}

extension Agitated: Has_Tasks {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Shower())
        return tmp
    }
}

extension Curious: Has_Tasks {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Give_Up())
        return tmp
    }
    
    struct Give_Up: IndividualAble {}
}

extension Negate_Self: Has_Tasks {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Youtube())
        tmp.append(Cat_Cafe())
        tmp.append(Intimate_One())
        return tmp
    }
}

extension 感情冷淡期: Has_Tasks {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(ChangeInto_Fresh_Color_Theme())
        tmp.append(Visit_Related_Beautiful_World())
        return tmp
    }
    
    struct ChangeInto_Fresh_Color_Theme: IndividualAble {}
    struct Visit_Related_Beautiful_World: IndividualAble {}
}
struct Savour_and_Reliving_and_Lingering_and_Afterglow: Emotion {}

struct Shower: IndividualAble {}
