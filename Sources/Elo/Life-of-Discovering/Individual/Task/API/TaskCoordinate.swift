import Foundation

struct TaskCoordinate: Hashable, Equatable {
    let time: Time
    let condition: IndividualCondition
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.identifier == rhs.identifier
    }
    
    let identifier = UUID()
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
}
