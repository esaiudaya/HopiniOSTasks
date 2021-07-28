//
//  Screen.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 28/07/21.
//

import XCTest

protocol Screen {
    
}

extension Screen {
    
    var app: XCUIApplication {
        return XCUIApplication()
    }
    
    func verifyElementExists(_ element: XCUIElement)
    {
        XCTAssertTrue(element.exists, "element should exist")
    }
    
    func tapButton(element: XCUIElement) {
        verifyElementExists(element)
        Utils.wait(secs: Utils.timeInterval)
        element.tap()
    }
    
    func typeTextToTextFields(element: XCUIElement, textToEnter: String) {
        verifyElementExists(element)
        Utils.wait(secs: Utils.timeInterval)
        element.tap()
        Utils.wait(secs: Utils.timeInterval)
        element.typeText(textToEnter)
    }
    
    func readLabelFromElement(element: XCUIElement, staticText: String) -> String {
        verifyElementExists(element)
        Utils.wait(secs: Utils.timeInterval)
        let label = element.staticTexts[staticText].label
        return label
    }
    
    func switchToggle(element: XCUIElement){
        verifyElementExists(element)
        Utils.wait(secs: Utils.timeInterval)
        element.tap(withNumberOfTaps: 1, numberOfTouches: 2)
        Utils.wait(secs: Utils.timeInterval)
    }
}




