//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Krystian Magiera on 18/07/2021.
//

import XCTest

class Tests_iOS: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        app.launchArguments = ["UI_TEST"]
        app.launch()
    }

    
    override func tearDown() {
       
        let screenshot = XCUIScreen.main.screenshot()
                let attachment = XCTAttachment(screenshot: screenshot)
                attachment.lifetime = .keepAlways
                add(attachment)
       
       app.terminate()
    }
}
