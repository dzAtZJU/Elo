import Elo_Itself

protocol App: Resource {}

public struct AppleMusic: App, IndividualAble {
    public init() {}
}
public struct Airbnb: App {
    public init() {}
}
public struct Netflix: App {
    public init() {}
}
public struct Medium: App {
    public init() {}
}
public struct Feedly: App {
    public init() {}
}

public struct 平行世界: App, PublicService, Task, Tool {
    public init() {}
}

public struct Twitter: App {
    public init() {}
}
public struct Youtube: App, IndividualAble {
    public init() {}
}

public struct Photos: App {
    public init() {}
}
public struct Health: App {
    public init() {}
}
public struct Things: App {
    public init() {}
}
public struct Bear: App, Tool {
    public init() {}
}

public struct AppleID: App {
    public init() {}
}

public struct Duolingo: App, IndividualAble {
    public init() {}
}

public struct SleepCycle: App, IndividualAble {
    public init() {}
}
