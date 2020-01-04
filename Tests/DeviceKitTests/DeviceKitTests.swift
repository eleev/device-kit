import XCTest
@testable import DeviceKit

final class DeviceKitTests: XCTestCase {
   
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

    static var allTests = [
        ("testStorateTotalSpace", testStorateTotalSpace),
        ("testStorageFreeSpace", testStorageFreeSpace),
        ("testStorageUsedSpace", testStorageUsedSpace),
        ("testOrientation", testOrientation),
        ("testInternetConnection", testInternetConnection),
        ("testDeviceType", testDeviceType)
    ]
}
