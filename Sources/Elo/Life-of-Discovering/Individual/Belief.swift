//
//  Belief.swift
//  Elo
//
//  Created by Zhou Wei Ran on 2020/9/20.
//  Copyright © 2020 Paper Scratch. All rights reserved.
//
import Elo_Itself

protocol Self_Belief {}

struct Sensitive: Self_Belief {}

struct Thorough_Challenge_Everything: Self_Belief, Affect_Throughput {
    var effect: Effect = .Decrease
}

struct Inspirational: Self_Belief {}

struct Resilience: Self_Belief {}

struct Uniqueness: Self_Belief {
    var Starting_Point = "iOS-Swift-Development"
    var approaches: EloSet<Approach> = [Comparative(), Semantic_Discrimination()]
    var weakness: EloSet<Approach> {
        approaches
    }
}

struct Sincere_and_Pride: Self_Belief {}
