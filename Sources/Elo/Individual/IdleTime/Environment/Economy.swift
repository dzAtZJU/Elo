import Elo_Itself

struct Economy: Has_Tasks {
    var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(Seek())
        tmp.append(Filter())
        tmp.append(Build_NewEconomy())
        tmp.append(Emigrate_to_AnotherEconomy())
        tmp.append(Entrepreneurship())
        return tmp
    }()
    
    struct Seek: IndividualAble {}
    struct Filter: IndividualAble {}
    struct Build_NewEconomy: IndividualAble {
        var technique = "Emotion_Drive"
    }
    struct Emigrate_to_AnotherEconomy: IndividualAble {}
    struct Entrepreneurship: IndividualAble {}
    
    // Start, Study, Live in US, Japan Market
    // Only Make money in China-Mainland Market while wearing mask
}
