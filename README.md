# Swiflet

_Swiflet_ provides `=>` which works like `let` in Kotlin. `=>` is useful when a return value is used multiple times in an expression.

```swift
// Similar to `sqrt(x() * x() + y() * y())`
// but calls `x()` and `y()` just once respectively
let l = sqrt((x() => { $0 * $0 }) + (y() => { $0 * $0 }))
```

It is possible to `throw` errors in a closure passed to `=>` because `=>` is marked with `rethrows`.

```swift
do {
    try foo => { try throwable($0) }
} catch {
    XCTFail()
}
```

## Lisence

MIT
