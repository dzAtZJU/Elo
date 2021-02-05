public protocol MicroEnvironment {}

public struct Sense_of_Security: MicroEnvironment {
    public init() {}
}

public struct Sense_of_Intimacy: MicroEnvironment {
    public init() {}
}

extension Sense_of_Security: Mockable {
    var mockings: [MarketItem] {
        var tmp = [MarketItem]()
        tmp.append(Headscarf())
        tmp.append(Hoodie())
        tmp.append(Nujabes())
        tmp.append(BeachHouse())
        tmp.append(Dark())
        tmp.append(Bedroom())
        tmp.append(Long_Acting_Drug())
        tmp.append(ReedDiffuser())
        return tmp
    }
}

extension Sense_of_Intimacy: Mockable {
    var mockings: [MarketItem] {
        var tmp = [MarketItem]()
        tmp.append(ThrowPillow())
        tmp.append(Cat_Cafe())
        return tmp
    }
}
