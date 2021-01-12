import Elo_Itself

protocol In_Symbiosis {
    var symbionts: [Symbiont] {
        get
    }
}

protocol Symbiont: Plant {
    var bringingFlows: [Indicator] {
        get
    }
    
    var treatings: [Approach] {
        get
    }
}
extension Symbiont {
    var bringingFlows: [Indicator] {
        []
    }
    
    var treatings: [Approach] {
        [
            Detach_and_Witness()
        ]
    }
}

struct Life_of_SideProject: Symbiont {}

struct Elo: Symbiont, Task {}

struct Dream: Symbiont {}

public struct Intimate_One: Symbiont, Perspective, Task {
    public init() {}
}
