import Elo_Itself

protocol Adventure: MarketItem {}

protocol Require_Adventures {
    var adventures: [Adventure] {
        get
    }
}

struct Cat_Cafe: Adventure, IndividualAble {}

struct Bedroom: Adventure, MicroEnvironment, IndividualAble {}

struct Workspace: Adventure, MicroEnvironment, IndividualAble {}

struct WalkableCommunity: Adventure, MicroEnvironment, Require_PublicService {
    var publicServices: [PublicService] = [Walkscore(), GlobalRentComparison()]
    
    var efficiency: Efficiency = .terrible
    
    struct Walkscore: PublicService {}
    struct GlobalRentComparison: PublicService {}
}

struct EF_日语游学: Adventure {}
