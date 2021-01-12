import Elo_Itself

protocol App: Resource {}

struct AppleMusic: App {}
struct Airbnb: App {}
struct Netflix: App {}
struct Medium: App {}
struct Feedly: App {}

struct 平行世界: App, PublicService, Task, Tool {}

struct Twitter: App {}
struct Youtube: App, IndividualAble {}

struct Photos: App {}
struct Health: App {}
struct Things: App {}
struct Bear: App, Tool {}

struct AppleID: App {}

struct Duolingo: App, IndividualAble {
    public init() {}
}

