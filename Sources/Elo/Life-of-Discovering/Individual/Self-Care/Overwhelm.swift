import Elo_Itself

protocol SelfCare: IndividualAble {}

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
}


