public protocol Time {}

public protocol TimePocket: Time {}

protocol LongTimeWorking: Time, Require_Adventures {}
extension LongTimeWorking {
    var adventures: [Adventure] {
        [WalkableCommunity(), Bedroom()]
    }
}
