# device-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Platforms](https://img.shields.io/badge/platform-iOS-yellowgreen.svg)]()
[![Language](https://img.shields.io/badge/language-Swift-orange.svg)]()
[![Coverage](https://img.shields.io/badge/coverage-34.00%25-orange.svg)]()
[![Documentation](https://img.shields.io/badge/docs-100%25-magenta.svg)]()
[![CocoaPod](https://img.shields.io/badge/pod-1.0.0-lightblue.svg)]()
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()

**Last Update: 16/November/2018.**

![](logo-device_kit.png)

# ✍️ About
📱Lightweight framework that allows to get extended information about an `iOS` device.

# 🏗 Installation
## CocoaPods
`device-kit` is availabe via `CocoaPods`

```
pod 'device-kit', '~> 1.0.1' 
```
## Manual
You can always use `copy-paste` the sources method 😄. Or you can compile the framework and include it with your project.

# 📚 Features
- Device Type information 
  - Easily get a device's `identifier`
  - Determine if an app running on a `simulator` or on an actual device
  - Includes information about each `iOS` device
- Device Storate status such as:
  - `Total` space
  - `Free` space 
  - `Used` space
  - You can format the data using various `units` (everything that is supported by `ByteCountFormatter.Units`)

# ✈️ Usage

Getting device's identifier:

```swift
let identifiers = UIDevice.current.deviceType
// `identifiers` will hold the corresponding devices' identifiers depending on your `iOS` model
```

Determing how much storage has left:

```swift
UIDevice.current.storageStatus.getFreeSpace(.useMB)
// Will print something like that:
// 139,197.3 MB

UIDevice.current.storageStatus.getFreeSpace(.useGB)
// Or you can change the unit type to Gigabytes:
// 139.16 GB

UIDevice.current.storageStatus.getFreeSpace(.useGB, includeUnitPostfix: false)
// If you don't want to get GB, MB postfixes then specify an optional parameter for `includeUnitPostfix`:
// 139.16
```
# 📝 ToDo
- [ ] Lightweight `Network` reachability (with `NotificationCenter` support or more safer approach in observing changes)
- [ ] Interface `orientation` observer 
- [ ] Device `orientation` observer


# 🙋‍♀️🙋‍♂️Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# 👨‍💻 Author 
[Astemir Eleev](https://github.com/jVirus)

# 🔖 Licence
The project is available under [MIT licence](https://github.com/jVirus/device-kit/blob/master/LICENSE)
