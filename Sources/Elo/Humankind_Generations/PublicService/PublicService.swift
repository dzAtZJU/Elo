import Elo_Itself

protocol PublicService {}

protocol Require_PublicService {
    var publicServices: [PublicService] {
        get
    }
}


protocol Popular_Connectoin: PublicService, Has_Drawbacks {}
extension Popular_Connectoin {
    public var drawbacks: [String] {
        var tmp = [String]()
        tmp.append("Plagued by ill-tasted meaning and hypocritical product/service")
        tmp.append("Popular-will is obstructed or wasted")
        tmp.append("Myopic")
        tmp.append("Floating")
        tmp.append("Abused")
        tmp.append("Illusory")
        tmp.append("Individual's Time is Abused")
        return tmp
    }
}

public struct Recommend: Encourage, Popular_Connectoin {}
public struct SearchEngine: Popular_Connectoin, Require_PublicService {
    var publicServices: [PublicService] {
        [Recommend()]
    }
}
    
public struct Concept: Popular_Connectoin, Has_Tasks {
    public init() {}
    public  var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(CheckConnection())
        tmp.append(AskForMethod())
        tmp.append(RefineMethod())
        return tmp
    }()
    
    public struct CheckConnection: Task {}
    public struct AskForMethod: Task {}
    public struct RefineMethod: Task {}
}

struct WidelyKnown: Popular_Connectoin {}

struct Rank: Popular_Connectoin {}

struct Hall: Popular_Connectoin {}

struct Dictionary: Popular_Connectoin {}

struct Satirical_Art: Popular_Connectoin {}

struct Rules_Laws: Popular_Connectoin {}

struct Popular_Net: Require_PublicService {
    var publicServices: [PublicService] = {
        var tmp = [PublicService]()
        tmp.append(Concept())
        tmp.append(WidelyKnown())
        tmp.append(Rank())
        tmp.append(Hall())
        tmp.append(Dictionary())
        tmp.append(Satirical_Art())
        tmp.append(Rules_Laws())
        return tmp
    }()
    
    var efficiency: Efficiency = .terrible
}

struct Meetup: PublicService {}

struct Appannie: PublicService {
    let item = "https://www.appannie.com/cn/apps/mac/top/japan/mac-productivity/"
}

struct Deepaso: PublicService {}

struct Stocks: PublicService {}

enum Education: Int {
    case Guide = 1
    case Resource = 2
    case Spiritually_Nearest_First_Approach = 4
    case Exposure_Control = 5
}
