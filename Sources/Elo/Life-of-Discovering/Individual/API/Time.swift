public protocol Time {}

public protocol TimePocket: Time {}

protocol LongTimeWorking: Time, Require_Adventures {}
extension LongTimeWorking {
    var adventures: [Adventure] {
        [WalkableCommunity(), Bedroom()]
    }
}

struct Interruptions: Time, Under_Expectation {
    var elements: [Any] = {
        var tmp = [Any]()
        tmp.append(Anxious())
        tmp.append(Waiting())
        tmp.append(Repulsion())
        tmp.append(Agitated())
        tmp.append(Curious())
        tmp.append(Negate_Self())
        tmp.append(DeadLocking())
        return tmp
    }()
}