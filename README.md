# Swiflet

_Swiflet_ provides `->>` like `let` in Kotlin.

```swift
struct Foo {
    var bar: Int
    var baz: Float
    var qux: String
}

let foo = Foo(bar: 2, baz: 3.0, qux: "xyz")
let (bar, qux) = foo ->> { ($0.bar, $0.qux) }
```

## Lisence

MIT
