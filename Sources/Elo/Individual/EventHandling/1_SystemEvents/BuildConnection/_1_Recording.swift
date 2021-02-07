import Elo_Itself

public struct Way_Of_Project: Approach, Task, Has_Tasks {
    public init() {}
    
    public var legitimacy: String = "Unique situations come sparsely, thus recording is nessary."
    
    public var constrainedBy: [Tool] = [Xcode_and_Swift()]
    
    public var tasks: [Task] = [
        Reflection(),
        InPlace_Comment()
    ]
    
    struct Xcode_and_Swift: Tool {}
    
    struct InPlace_Comment: Task {}
    
    enum Principle: String {
        case Reflection_StartPoint = "Situation; Feeling -> Memory"
        case Handy = "Allow ideas and memories to flow."
        case Avoid_Category = "Be specific as possible as you can."
        case Defer_Abstract = "If there will be patterns, let them emerge themselves."
    }
}
