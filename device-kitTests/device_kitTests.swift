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
        XCTAssert(mb == "499,963.2 MB")
        
        let gb = UIDevice.current.storageStatus.getTotalSpace(.useGB)
        XCTAssert(gb == "499.96 GB")
        
        let kb = UIDevice.current.storageStatus.getTotalSpace(.useKB)
        XCTAssert(kb == "499,963,171 KB")
    }
    
    func testStorageFreeSpace() {
        let mb = UIDevice.current.storageStatus.getFreeSpace(.useMB)
        XCTAssert(mb == "138,251.7 MB")

        let gb = UIDevice.current.storageStatus.getFreeSpace(.useGB)
        XCTAssert(gb == "138.23 GB")
        
        let kb = UIDevice.current.storageStatus.getFreeSpace(.useKB)
        XCTAssert(kb == "138,218,205 KB")
    }
    
    func testStorageUsedSpace() {
        let mb = UIDevice.current.storageStatus.getUsedSpace(.useMB)
        XCTAssert(mb == "361,886.2 MB")
        
        let gb = UIDevice.current.storageStatus.getUsedSpace(.useGB)
        XCTAssert(gb == "361.9 GB")
        
        let kb = UIDevice.current.storageStatus.getUsedSpace(.useKB)
        XCTAssert(kb == "361,913,528 KB")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
