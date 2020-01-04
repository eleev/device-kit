# device-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Build](https://github.com/jvirus/device-kit/workflows/Build/badge.svg)]()
[![Platforms](https://img.shields.io/badge/Platform-iOS-yellowgreen.svg)]()
[![Language](https://img.shields.io/badge/Language-Swift_5.1-orange.svg)]()
[![Codecov](https://codecov.io/gh/jVirus/device-kit/branch/master/graph/badge.svg)](https://codecov.io/gh/jVirus/device-kit)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)]()

**Last Update: 04/January/2020.**

![](logo-device_kit.png)

### If you like the project, please give it a star ⭐ It will show the creator your appreciation and help others to discover the repo.

# ✍️ About
📱 Framework that allows to get extended information about an `iOS` device.

# 📚 Features
- **Device Type information** 
  - Easily get a device's `identifier`
  - Determine if an app running on a `simulator` or on an actual device
  - Includes information about an each `iOS` device
- **Device Storage status such as:**
  - `Total` space
  - `Free` space 
  - `Used` space
  - You can format the data using various `units` (by using `ByteCountFormatter.Units`)
- **Device Orientation information**
  - Check whether the device is in `.portrait` or `.landscape` orientation without the need to make boilerplate `UIDevice.current.orientation` calls & `if/else` checks
  - You can use `isPortrait` property if you'd like
- **Device's Internet Connection status**
  - Super easily check whether your device is connected to the internet
  - You can get the reachability status as well

# ✈️ Usage

Getting device's identifier:

```swift
let identifiers = UIDevice.current.deviceType
// `identifiers` will hold the corresponding devices' identifiers depending on your `iOS` model
```

Determing how much storage has left:

```swift
UIDevice.current.storageStatus.getFreeSpace(.useMB)
// Will print something like this:
// 139,197.3 MB

UIDevice.current.storageStatus.getFreeSpace(.useGB)
// Or you can change the unit type to Gigabytes:
// 139.16 GB

UIDevice.current.storageStatus.getFreeSpace(.useGB, includeUnitPostfix: false)
// If you don't want to get GB, MB postfixes then specify an optional parameter for `includeUnitPostfix`:
// 139.16
```

Checking the device's orientation:

```swift
let orienation = UIDevice.current.deviceOrientation

switch orientation {
  case .portrait:
    showDrawerView()
  case .landscape:
    hideDrawerView()
}
```

Getting the internet connection status:

```swift
let internet = UIDevice.current.internetConnection

guard internet.connection == .open else { 
  throw NetworkError.isNotAvailabe("Missing internet connection")
}

sendRequest()
```

# 🏗 Installation

## Swift Package Manager

### Xcode 11+

1. Open `MenuBar` → `File` → `Swift Packages` → `Add Package Dependency...`
2. Paste the package repository url `https://github.com/jVirus/device-kit` and hit `Next`.
3. Select the installment rules.

After specifying which version do you want to install, the package will be downloaded and attached to your project. 

### Package.swift
If you already have a `Package.swift` or you are building your own package simply add a new dependency:

```swift
dependencies: [
    .package(url: "https://github.com/jVirus/device-kit", from: "1.0.0")
]
```

## Manual 
You can always use copy-paste the sources method 😄. Or you can compile the framework and include it with your project.


# 📝 ToDo
- [x] Lightweight `Network` reachability (with `NotificationCenter` support or more safer approach in observing changes)
  - [ ] `NotificationCenter` observer support
- [x] Device `orientation` 
  - [ ] `NotificationCenter` observer support
- [ ] Interface `orientation`
  - [ ] `NotificationCenter` observer support

# 🙋‍♀️🙋‍♂️Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# 👨‍💻 Author 
[Astemir Eleev](https://github.com/jVirus)

# 🔖 Licence
The project is available under [MIT licence](https://github.com/jVirus/device-kit/blob/master/LICENSE)
