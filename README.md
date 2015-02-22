# UserDefaults


[![Version](https://img.shields.io/cocoapods/v/UserDefaults.svg?style=flat)](http://cocoadocs.org/docsets/UserDefaults)
[![License](https://img.shields.io/cocoapods/l/UserDefaults.svg?style=flat)](http://cocoadocs.org/docsets/UserDefaults)
[![Platform](https://img.shields.io/cocoapods/p/UserDefaults.svg?style=flat)](http://cocoadocs.org/docsets/UserDefaults)

Convenient wrapper for NSUserDefaults. 

- Uses enum values as keys (much safer than strings!).
- Uses generics and type inference in order to avoid having to specify the value type, in most cases.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

The keys have to comform to the StringRepresentable protocol. Normally you will declare an enum similar to this:

```swift
enum MyKeys:String, StringRepresentable {
    // give your keys a meaningful name
    case Key1 = "key1"
    case Key2 = "key2"
    case Key3 = "key3"
    case Key4 = "key4"
    case Key5 = "key5"
    
    var stringValue:String {return self.rawValue}
}
```

Examples:


```swift
MyUserDefaults.setValue(MyKeys.Key1, value: "hello")
let a:String? = MyUserDefaults.value(MyKeys.Key1)
println("String: \(a)")

MyUserDefaults.setValue(MyKeys.Key2, value: 2.46)
let b:Double? = MyUserDefaults.value(MyKeys.Key2)
println("Double: \(b)")

MyUserDefaults.setValue(MyKeys.Key3, value: 3)
let c:Int? = MyUserDefaults.value(MyKeys.Key3)
println("Int: \(c)")

MyUserDefaults.setValue(MyKeys.Key4, value: true)
let d:Bool? = MyUserDefaults.value(MyKeys.Key4)
println("Bool: \(d)")

// pass as parameter
func foo(a:String?) {}
MyUserDefaults.setValue(MyKeys.Key5, value: 3)
foo(MyUserDefaults.value(MyKeys.Key5))

// type inference not possible, use convenience accessors
println("String: \(MyUserDefaults.string(MyKeys.Key1))")
```

## Requirements

## Installation

UserDefaults is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UserDefaults"

## Author

ischuetz, ivanschuetz@gmail.com

## License

UserDefaults is available under the MIT license. See the LICENSE file for more info.

