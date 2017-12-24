//
//  pomeloX_iosTests.swift
//  pomeloX-iosTests
//
//  Created by Supakit Kriangkhajorn on 11/2/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import XCTest
@testable import pomeloX_ios

class pomeloX_iosTests: XCTestCase {
    
    
    //MARK: Pomelo Class Tests
    // Confirm that the Pomelo initializer returns a Pomelo     object when passed valid parameters.
    func testPomeloInitializationSucceeds() {
        let caseOne = Pomelo.init(name: "KhaoYai", photo: nil, date: "25/12/2017")
        XCTAssertNotNil(caseOne)
    }
}
