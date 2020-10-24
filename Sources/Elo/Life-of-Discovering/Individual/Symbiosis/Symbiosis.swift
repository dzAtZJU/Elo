import Elo_Itself

protocol In_Symbiosis {
    var symbionts: [Symbiont] {
        get
    }
}

protocol Symbiont: Plant, Require_Detach_and_Witness {
    var flowsBetweenSymbiosis: [Indicator] {
        get
    }
}
extension Symbiont {
    var flowsBetweenSymbiosis: [Indicator] {
        []
    }
}

struct Dream: Symbiont {
    var obstacles: [String] = []
    
    var semantic_product: String? = nil
}

struct Life_of_SideProject: Symbiont {
    var obstacles: [String] = ["the world of computing is full of noise and complications"]
    
    var semantic_product: String? = "iOS App Development Semantics"
}

struct Elo: Symbiont {
    var obstacles: [String] = []
    
    var semantic_product: String? = "Elo Runtime"
}

public struct Intimate_One: Symbiont, Perspective, Task {
    public init() {}
    
    public var obstacles: [String] = []
    
    public var semantic_product: String? = "Social Semantics"
}

protocol Require_Intimacy: Mockable, Require_PublicService {}

extension Life_of_Discovering: In_Symbiosis {
    var symbionts: [Symbiont] {
        [Elo(),
         Dream(),
         Life_of_SideProject(),
         Intimate_One()]
    }
}
