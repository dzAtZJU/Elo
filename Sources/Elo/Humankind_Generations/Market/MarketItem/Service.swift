import Elo_Itself

protocol Service: MarketItem {}

struct Servant: Service, Has_Criterias {
  var criterias: [Any] {
        var tmp = [Any]()
        tmp.append("Should not disturb employer in any case")
        return tmp
    }
}

struct Massage: Service {}
