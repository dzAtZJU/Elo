protocol Service: MarketMember {}

struct Servant: Service, Has_Criterias {
  var criterias: EloSet<String> {
        var tmp = EloSet<String>()
        tmp.append("Should not disturb employer in any case")
        return tmp
    }
}