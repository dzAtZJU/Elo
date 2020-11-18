import Elo_Itself

let tasks: [Dimension: [Task]] = {
    var tmp = [Dimension: [Task]]()
    tmp[Dimension(time: On_the_Go() , condition: Career_Condition.Completed)] = [
        Duolingo(),
        InUsing_App_Discrimination()
    ]
    
    tmp[Dimension(time: On_the_Go() , condition: Career_Condition.Holding)] = [
        Youtube()
    ]
    return tmp
}()

struct On_the_Go: TimePocket {}

public struct InUsing_App_Discrimination: IndividualAble {
    public init() {}
}

struct Track: Task, Force {
    var perspectives: [Perspective] = [Life_Of_Discovering(), CirclePopularWill_Statistics(), Problems_Repeatedly_Occur_in_LongTerm(), Market()]
    
    var elements: [Any] = {
        var tmp = [Any]()
        tmp.append(Follow_Current_Minor_Feeling())
        tmp.append(DeadLocking())
        tmp.append(Materials())
        tmp.append(iOS_App_Development_Skill())
        // 激情创作过后是规律生活作息的 phase
        // 激情的消退早于认知
        // phases switching should be gradual
        // 感情冷淡下来后，很难再回头投入了。怎么办？去度假？
        return tmp
    }()
    
    struct Market: Economy_Participant, Perspective {
        var segmentations: [MarketSegmentation] = {
            var tmp = [MarketSegmentation]()
            tmp.append(ToI())
            tmp.append(独居成年人())
            return tmp
        }()
    }
    
    struct Life_Of_Discovering: Perspective {}
    
    struct Problems_Repeatedly_Occur_in_LongTerm: Perspective {}
    
    struct CirclePopularWill_Statistics: Task, Require_PublicService, Has_Tasks, Perspective {
        
        var tasks: [Task] = [Open_to_Wander_Away()]
        
        var publicServices: [PublicService] = {
            var tmp = [PublicService]()
            tmp.append(Appannie())
            return tmp
        }()
        
        var efficiency: Efficiency = .terrible
        
        struct Appannie: PublicService {}
        struct Sumally: PublicService {}
    }
}

protocol Predecessor: Steady_Source {}
struct 文睿: Predecessor {}
struct 江峰: Predecessor {}
extension Medium: Predecessor {}
extension Feedly: Predecessor {}

struct Materials: IsSpectrum {
    var bands: [[Steady_Source]] = [
        Personal(),
        [文睿(), 江峰(), Medium(), Feedly()]
        Friends(),
        Culture()]
    
    struct Personal: Steady_Source, Has_Materials {
        var materials: [Material] {
            var tmp = [Material]()
            tmp.append(Bear())
            tmp.append(Things())
            tmp.append(Elo())
            return tmp
        }
    }
    

    struct Friends: Steady_Source, Has_Materials {
        var materials: [Material] {
            var tmp = [Material]()
            tmp.append(平行世界())
            tmp.append(Twitter())
            return tmp
        }
    }

    struct Culture: Steady_Source, Has_Materials {
        var materials: [Material] {
            var tmp = [Material]()
            tmp.append(Animation())
            tmp.append(Movie())
            return tmp
        }
        
        struct Movie: Steady_Source {}
        struct Animation: Steady_Source {}
    }

}

struct iOS_App_Development_Skill {}

extension Things: Steady_Source {}
extension Bear: Steady_Source {}
extension Elo: Steady_Source {}

extension 平行世界: Steady_Source {}
extension Twitter: Steady_Source {}

extension Youtube: Steady_Source {}
extension Medium: Steady_Source {}
extension Feedly: Steady_Source {}
