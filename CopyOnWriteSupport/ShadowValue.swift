//
//  ShadowValue.swift
//  CopyOnWriteSupport
//
//  Created by SangHo Cha on 10/17/23.
//

import Foundation

/// Copy-on-write container
///
/// In this container, you can control the value type with lazy copy ([CoW])
///
/// ## How to use
/// Use ``init(value:)`` for creating CoW container with `Element` type lazy copy needs.
///
/// ## Read
/// You can access the origin value to ``value`` property.
/// ```swift
/// let shadowInteger: ShadowValue<Int> = ShadowValue(7)
/// shadowInteger.value // 7
/// ```
///
/// ## Write
/// You can re-write the new value to ``value`` property.
/// ```swift
/// var shadowInteger: ShadowValue<Int> = ShadowValue(7)
///
/// var copied = shadowInteger // shallow copy occurred
/// copied.value = 42 // deep copy occurred
/// ```
///
/// [CoW]:https://en.wikibooks.org/wiki/More_C++_Idioms/Copy-on-write
public struct ShadowValue<Element> {
    private class _ReferenceContainer {
        var value: Element
        
        init(_ value: Element) {
            self.value = value
        }
    }
    
    private var _ref: _ReferenceContainer
    
    /// The origin value
    ///
    /// This value is wrapped by reference container.
    public var value: Element {
        get {
            return self._ref.value
        }
        
        set {
            if isKnownUniquelyReferenced(&self._ref) {
                self._ref.value = newValue
            } else {
                self._ref = _ReferenceContainer(newValue)
            }
        }
    }
    
    /// Create a CoW container
    ///
    /// - parameter value: The origin value
    public init(value: Element) {
        self._ref = _ReferenceContainer(value)
    }
}
