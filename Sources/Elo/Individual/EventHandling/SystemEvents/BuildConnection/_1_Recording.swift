import Elo_Itself

public struct Way_Of_Project: Approach, Task, Has_Tasks {
    public init() {}
    
    public var legitimacy: String {
        "Unique situations come sparsely, thus recording is nessary."
    }
    
    public var constrainedBy: [Tool] {
        [
            Xcode_and_Swift(),
            Bear()
        ]
    }
    
    enum Principle: String {
        case Handy = "Allow ideas and memories to flow."
        case Avoid_Category = "Be specific as possible as you can."
        case Defer_Abstract = "If there will be patterns, let them emerge themselves."
        case Positive_Heuristic
    }
    
    var tasks: [Task] {
        [
            Reflection(),
            Semantic_Discrimination()
        ]
    }
    
    public struct Reflection: Task {
        var startingPoint: [String] = {
            var tmp = [String]()
            tmp.append("Flash")
            tmp.append("Emotion")
            tmp.append("Feeling")
            tmp.append("Situation")
            tmp.append("Enumerate Perspective")
            return tmp
        }()
    }
}

public struct Semantic_Discrimination: Approach, Task {
   public init() {}
    
    public init(perspectives: [Perspective]) {
        self.perspectives.append(contentsOf: perspectives)
    }
    public var perspectives: [Perspective] = []
    
    public var constrainedBy: [Tool] = [YoudaoDict()]
}
