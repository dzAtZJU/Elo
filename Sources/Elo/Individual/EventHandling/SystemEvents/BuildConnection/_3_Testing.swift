import Elo_Itself

public struct Comparative: Approach {
    public init(legitimacy: String = "", constrainedBy: [Tool] = []) {
        self.legitimacy = legitimacy
        self.constrainedBy = constrainedBy
    }
    
    public var legitimacy: String = ""
    
    public var constrainedBy: [Tool] = []
}

public struct Experiment: Task, Approach, Has_Tasks {
    public init() {}
    
    public init(tasks: [Task], perspectives: [Perspective]) {
        self.tasks = tasks
        self.perspectives = perspectives
    }
    public var constrainedBy: [Tool] = []
    
    public var legitimacy: String = "Like the sky, it covers those can't seen by the appproatch semantic discrimination."
    
    public var tasks: [Task] = []
    
    public var perspectives: [Perspective] = []
}

struct Custom_Interview {
    var speaking: [Any] = [Stories_insteadof_Statements(), no_IceCreamQuestion()]
    
    var feelings: [Feeling] = [.Pull_insteadof_push, .dont_Pitch]
    
    var infos: [Info] = [.PastBehaviors_insteadof_FutureBehaviors, .ActualSelf_insteadof_IdealSelf]
    
    var opinion_to_data: [Opinion_to_Data] = [._2_as_a_Round, ._50_Persons]
    
    enum Feeling {
        case Pull_insteadof_push
        case dont_Pitch
    }
    
    struct no_IceCreamQuestion {}
    
    enum Info {
        case PastBehaviors_insteadof_FutureBehaviors
        case ActualSelf_insteadof_IdealSelf
    }
    
    enum Opinion_to_Data {
        case _2_as_a_Round
        case _50_Persons
    }
}

public struct Stories_insteadof_Statements {
    public init() {}
    
    var items: [String] = {
        var tmp = [String]()
        tmp.append("Tell me about the last time you ...")
        tmp.append("Yes, and ...")
        
        tmp.append("Why")
        tmp.append("Tell me more about ...")
        
        tmp.append("What do you mean by X")
        tmp.append("How are you dealing with the problem now?")
        
        tmp.append("Keep Slience until they jump out")
        return tmp
    }()
}
