import Elo_Itself

protocol Content: Resource, Has_Criterias {}
extension Content {
    var criterias: [Any] {
        var tmp = [Any]()
        tmp.append("Closeness and Immediacy over attractiveness")
        tmp.append("Sincerity")
        tmp.append("Emotion")
        tmp.append("Rich Structure")
        tmp.append("Advance_Or_Out")
        return tmp
    }
}
protocol Music: Content {}
protocol Television_and_Movie: Content, Infra {}

struct BeachHouse: Music {}
struct Hiperson: Music {}
struct Khruangbin: Music {}
struct Nujabes: Music {}

struct DoctorX: Television_and_Movie {}
struct EmilyInParis: Television_and_Movie {}
struct knowledge_dot_ca: Television_and_Movie {}

struct Content_from_Finland: Content {
    var elements: [String] = {
        var tmp = [String]()
        tmp.append("www.visitfinland.com")
        tmp.append("finland.fi")
        tmp.append("a man without past")
        return tmp
    }()
}

// https://edu.gcfglobal.org/en/
