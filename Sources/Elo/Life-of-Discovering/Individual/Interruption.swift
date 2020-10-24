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

struct DeepBreath: IndividualAble {}

struct Mindfulness_Deconstruction: IndividualAble {}

struct Drown_In_Content: IndividualAble, Affect_Throughput {
    var items: [Content] = {
        var tmp = [Content]()
        tmp.append(Khruangbin())
        tmp.append(Nujabes())
        tmp.append(BeachHouse())
        tmp.append(Hiperson())
        tmp.append(DoctorX())
        return tmp
    }()
    
    var effect = Effect.Decrease
}

struct Pacify_BrainWave: IndividualAble {}

struct Dormant: IndividualAble {
        var elements: [IndividualAble] = {
        var tmp = [IndividualAble]()
        tmp.append(Pacify_BrainWave())
        tmp.append(Sleep())
        return tmp
    }()
}

struct Short_Acting_Drug: Resource, IndividualAble {}

struct Sleep: IndividualAble {
    var resources: [Resource] = {
        var tmp = [Resource]()
        tmp.append(Pillow())
        tmp.append(Mattress())
        tmp.append(Earplug())
        tmp.append(Blindfold())
        tmp.append(ThrowPillow())
        tmp.append(Air_Conditioning())
        tmp.append(Waist_Cushion())
        return tmp
    }()
    
    var interruptions: [Any] = {
        var tmp = [Text]()
        tmp.append(Mosquito())
        tmp.append(Stomach())
        tmp.append(Urinate_and_Defecate())
        return tmp
    }()
    
    struct Mosquito {}
    struct Stomach {}
    struct Urinate_and_Defecate {}
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

struct Sail_out: SymbiosisAble {
    var item: [String] = {
        var tmp = [String]()
        tmp.append("Turn to Intimate one")
        tmp.append("When 想不通, reach out to seniors for inspiration")
        return tmp
    }()
}

struct Give_Up: IndividualAble {}

extension Curious: Operable {
    public var handler: [Task] {
        var tmp = [Task]()
        tmp.append(Give_Up())
        return tmp
    }
}

struct Negate_Self: Proper, Operable {
    var handler: [Task] = {
        var tmp = [Task]()
        tmp.append(Watch_Politics_at_Youtube())
        tmp.append(Dormant())
        tmp.append(Cat_Cafe())
        return tmp
    }()
}

struct Shower: IndividualAble {}
