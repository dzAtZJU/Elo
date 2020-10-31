import Elo_Itself

protocol SelfCare: Task {}

protocol Overwhelm: Force {
    var drives: [SelfCare] {
        get
    }
}

struct Drowsiness: Overwhelm {
    var drives: [SelfCare] = [Sleep()]
}
extension Sleep: SelfCare {
    var perspective: Perspective? {
        nil
    }
}

extension Intimate_One: Overwhelm {
    var drives: [SelfCare] {
        [SkinCare()]
    }
    
    struct SkinCare: SelfCare, TimePocket {
        var perspective: Perspective? = Intimate_One()
        var insertingTasks: [Task] = [Watch_Politics_at_Youtube()]
    }
}


