import Elo_Itself

protocol App: Resource {}

struct AppleMusic: App {}
struct Airbnb: App {}
struct Netflix: App {}
struct Medium: App {}
struct 平行世界: App, PublicService, Task {}

struct Twitter: App {}
struct Youtube: Infra, App {}

struct Photos: App {}
struct Health: App {}
struct Things: App {}

struct AppleID: App {}
