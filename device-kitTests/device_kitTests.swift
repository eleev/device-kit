//
//  device_kitTests.swift
//  device-kitTests
//
//  Created by Astemir Eleev on 16/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import device_kit

class device_kitTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /// MARK: - The following test cases are only valid for the machiene that was used for these particular tests. Each laptop and mobile device will have different test-case values. 
    
    func testStorateTotalSpace() {
        let mb = UIDevice.current.storageStatus.getTotalSpace(.useMB)
        XCTAssert(mb == mb)
        
        let gb = UIDevice.current.storageStatus.getTotalSpace(.useGB)
        XCTAssert(gb == gb)
        
        let kb = UIDevice.current.storageStatus.getTotalSpace(.useKB)
        XCTAssert(kb == kb)
    }
    
    func testStorageFreeSpace() {
        let mb = UIDevice.current.storageStatus.getFreeSpace(.useMB)
        XCTAssert(mb == mb)

        let gb = UIDevice.current.storageStatus.getFreeSpace(.useGB)
        XCTAssert(gb == gb)
        
        let kb = UIDevice.current.storageStatus.getFreeSpace(.useKB)
        XCTAssert(kb == kb)
    }
    
    func testStorageUsedSpace() {
        let mb = UIDevice.current.storageStatus.getUsedSpace(.useMB)
        XCTAssert(mb == mb)
        
        let gb = UIDevice.current.storageStatus.getUsedSpace(.useGB)
        XCTAssert(gb == gb)
        
        let kb = UIDevice.current.storageStatus.getUsedSpace(.useKB)
        XCTAssert(kb == kb)
    }
    
    func testOrientation() {
        let orienation = UIDevice.current.deviceOrientation
        XCTAssert(orienation == .portrait)
    }
    
    func testInternetConnection() {
        let internet = UIDevice.current.internetConnection
        XCTAssert(internet.connection == .open)
        XCTAssert(internet.status == .reachable)
    }
    
    func testDeviceType() {
        let type = UIDevice.current.deviceType
        XCTAssertEqual(type, .simulator)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
