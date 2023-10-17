# CopyOnWriteSupport

A container for deep-coping lazily

## Usage

```swift
let shadowInteger: ShadowValue<Int> = ShadowValue(7)

var copied = shadowInteger // shallow-copy
copied.value = 42 // deep-copy
```
