import Elo_Itself

// bear://x-callback-url/open-note?id=DBEEC32A-3BDD-49D5-8D84-480DB0E7C76A-436-0000FC23070DD6A8
struct Sleep: DevelopingHabit {
    var resources: [Resource] = {
        var tmp = [Resource]()
        tmp.append(SleepCycle())
        tmp.append(Pillow())
        tmp.append(Air_Purifying())
        tmp.append(Mattress())
        tmp.append(Earplug())
        tmp.append(Blindfold())
        tmp.append(ThrowPillow())
        tmp.append(Air_Conditioning())
        tmp.append(Waist_Cushion())
        return tmp
    }()
    
    var interruptions: [Any] = {
        var tmp = [Any]()
        tmp.append(Mosquito())
        tmp.append(Stomach())
        tmp.append(Urinate_and_Defecate())
        return tmp
    }()
    
    struct Mosquito {}
    struct Stomach {}
    struct Urinate_and_Defecate {}
}

struct Synchronize_Body_and_Brain: DevelopingHabit, Has_Tasks {
    var tasks: [Task] = {
        var tmp = [Task]()
        tmp.append(Adjust_GetUpTime_to_8AM())
        return tmp
    }()
    
    struct Adjust_GetUpTime_to_8AM: Task {}
}

struct CorrectBadLittleHabits: DevelopingHabit {
    let items = [
        "分心",
        "多动症"
    ]
}

// Visual Design

struct Hair: DevelopingHabit {}

struct SkinCare: DevelopingHabit {}

struct ShapingFigure: DevelopingHabit {}

struct Dressing: DevelopingHabit {}
