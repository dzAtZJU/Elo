import Elo_Itself

struct Sensitive: Self_Belief {}

struct Thorough_Challenge_Everything: Self_Belief, Affect_Throughput {
    var effect: Effect = .Decrease
}

struct Inspirational: Self_Belief {
    struct Love_Task_SocialNetwork: Self_Belief {
        let items = [
            "No love, no move/act",
            "I love, I move/act"
        ]
        
        let outcome = "Mindset Breakthrough"
    }
}

struct Resilience: Self_Belief {}

struct Uniqueness: Self_Belief {
    var Starting_Point = "iOS-Swift-Development"
    var approaches: [Approach] = [Organize_as_Tree(), Comparative(), Semantic_Discrimination()]
    var weakness: [Approach] {
        approaches
    }
}

struct Sincere_and_Pride: Self_Belief {}
