//
//  UIDevice+Extended.swift
//  device-kit
//
//  Created by Astemir Eleev on 16/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension UIDevice {
    
    /// Allows to get access to the current device type and model
    public var deviceType: DeviceType {
        return DeviceType.current
    }
    
    /// Allows to get access to the storage status such as:
    ///
    /// - totalSpace
    /// - freeSpace
    /// - usedSpace
    public var storageStatus: StorageStatus {
        return StorageStatus()
    }
    
}
