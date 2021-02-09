import Elo_Itself

protocol IndividualCondition: Feeling, MicroEnvironment {
    var recovering: [Task] {
        get
    }
    
    var saving: [String] {
        get
    }
}

extension IndividualCondition {
    var recovering: [Task] {
        []
    }
    
    var saving: [String] {
        []
    }
}

public enum Career_Condition: IndividualCondition {
    case Completed
    case Holding
}

public enum Soul_Condition: IndividualCondition {
    case Full
    case Poor
}

public enum Brain_Body_Condition: IndividualCondition {
    case Full
    case Poor
}
