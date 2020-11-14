import Elo_Itself

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
        tmp.append(EmilyInParis())
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
        var tmp = [Any]()
        tmp.append(Mosquito())
        tmp.append(Stomach())
        tmp.append(Urinate_and_Defecate())
        return tmp
    }()
    
    struct Mosquito {}
    struct Stomach {}
    struct Urinate_and_Defecate {}
}


struct Sail_out: SymbiosisAble, Require_PublicService {
    var item: [String] = {
        var tmp = [String]()
        tmp.append("Turn to Intimate one")
        tmp.append("When 想不通, reach out to seniors for inspiration")
        return tmp
    }()
    
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(平行世界())
        return tmp
    }()
}

struct TurnTo_Familiar_and_Accessible: Task, Has_Tasks, Has_Criterias {
    var tasks: [Task] = [
        AppleMusic最爱精选(),
        Drown_In_Content()
    ]
    
    var criterias: [Any] = ["Loud", "Dense"]
}

struct Give_Up: IndividualAble {}

struct Shower: IndividualAble {}

struct SkinCare: SelfCare, TimePocket {
    var perspective: Perspective? = Intimate_One()
    var insertingTasks: [Task] = [Watch_Politics_at_Youtube()]
}

struct Turn_to_Elo: Task, Has_Tasks {
    var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(初心拾回())
        tmp.append(Incorporate_NewConcept())
        return tmp
    }()
    
    struct 初心拾回: Task {}
    struct Incorporate_NewConcept: Task {}
}

struct ChangeInto_Fresh_Color_Theme: IndividualAble {}
struct Visit_Related_Beautiful_World: IndividualAble, Has_Tasks {
    var tasks: [Task] = [Drown_In_Content()]
}

struct Chat: SymbiosisAble {}
struct Walk_with_Friend: SymbiosisAble {}
struct Walk_Dog: SymbiosisAble {}
struct Spa: SymbiosisAble {}

struct Synchronize_Body_and_Brain: Task, Has_Tasks {
    var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(Adjust_GetUpTime_to_8AM())
        return tmp
    }()
    
    struct Adjust_GetUpTime_to_8AM: Task {}
}
