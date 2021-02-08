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
    
    // bear://x-callback-url/open-note?id=958E5C2C-E840-4087-BC97-1284A7F0EC52-436-00009A75D81B37F0
    // Start, Study, Live in US, Japan Market
    // Only Make money in China-Mainland Market while wearing mask
}
