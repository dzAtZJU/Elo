import Elo_Itself

public struct Way_Of_Project: Approach, Task, Has_Tasks {
    public init() {}
    
    public var legitimacy: String {
        "Unique situations come sparsely, thus recording is nessary."
    }
    
    enum ConstrainedBy {
        case Xcode_and_Swift
        case Bear
        case PersonalApp
    }
    
    struct PersonalApp: Tool {}
    
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
        enum StartingPoint {
            enum Flash {
                case Emotion
            }
            
            enum EnumeratePerspective {
                case Feeling
                case Situation
            }
        }
        
        enum Step {
            case Describe
        }
    }
}

public struct Semantic_Discrimination: Approach, Task {
   public init() {}
    
    public init(perspectives: [Perspective]) {
        self.perspectives.append(contentsOf: perspectives)
    }
    public var perspectives: [Perspective] = [
        Mind()
    ]
    
    public var constrainedBy: [Tool] = [YoudaoDict()]
}
