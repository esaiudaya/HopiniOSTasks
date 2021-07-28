//
//  FormTests.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import XCTest

class FormTests: Tests_iOS {

    
    func testNavigateToFormScreen() {
        MenuScreen().tapFormButton()
            .verifyNavigatedSuccessfullyFormScreen()
            .typeFirstName(valueToType: "Hopin")
            .typeLastName(valueToType: "UK")
            .switchToggle1()
            .switchToggle2()
            .tapBackButton()
    }
    
    //This test case has issue and the value is not matched.
    func testValidateFirstnameValue() {
        MenuScreen().tapFormButton()
            .typeFirstName(valueToType: "Hopin")
            .typeLastName(valueToType: "UK")
            .verifyFirstNameWithValue(valueToVerify: "Hopin")
    }
    
    //This test case has issue and the value is not matched.
    func testValidateLastnameValue() {
        MenuScreen().tapFormButton()
            .typeFirstName(valueToType: "Hopin")
            .typeLastName(valueToType: "UK")
            .verifyLastNameWithValue(valueToVerify: "UK")
    }
    
    func testValidateToggle1State(){
        MenuScreen().tapFormButton()
            .switchToggle1()
            .verifyToggle1Value()
    }

    func testValidateToggle2State(){
        MenuScreen().tapFormButton()
            .verifyNavigatedSuccessfullyFormScreen()
            .switchToggle2()
            .verifyToggle2Value()
    }
}
