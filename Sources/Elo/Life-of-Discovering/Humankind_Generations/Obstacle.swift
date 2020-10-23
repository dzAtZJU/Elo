import Elo_Itself

struct Iceberg: Phenomena {
    var humankindable: Humankindable = Dig()
    
    struct Dig: Humankindable {}
}

struct Double_Edged_Sword: Phenomena {
    var humankindable: Humankindable = Harness()
    
    struct Harness: Humankindable {}
}

