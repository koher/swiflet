infix operator => : SwifletPrecedence

precedencegroup SwifletPrecedence {
    higherThan: AssignmentPrecedence
    associativity: left
}

public func =><T, U>(lhs: T, rhs: (T) throws -> U) rethrows -> U {
    return try rhs(lhs)
}
