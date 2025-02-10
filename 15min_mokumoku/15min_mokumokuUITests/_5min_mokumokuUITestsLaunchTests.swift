//
//  _5min_mokumokuUITestsLaunchTests.swift
//  15min_mokumoku
//
//  Created by 長谷川 拓海(Takumi Hasegawa) on 2025/02/10.
//  Copyright (c) 2025 *ReNKCHANNEL*. All rights reserved.
//

import XCTest

final class _5min_mokumokuUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
