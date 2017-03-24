infix operator =>

public func =><T, U>(lhs: T, rhs: (T) -> U) -> U {
    return rhs(lhs)
}
