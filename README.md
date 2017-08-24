# Swiflet

_Swiflet_ provides `=>` which works like `let` in Kotlin. `=>` is useful when a return value is used multiple times in an expression.

```swift
// Similar to `x() * x()` but calls `x()` just once
let square = x() => { $0 * $0 }
```

It is possible to `throw` errors in a closure passed to `=>` because `=>` is marked with `rethrows`.

```swift
do {
    try x() => { try throwable($0) }
} catch {
    // Error handling
}
```

## Lisence

MIT
