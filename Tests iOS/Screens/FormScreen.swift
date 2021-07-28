//
//  FormScreen.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//


import XCTest

class FormScreen: Screen {
    
    
    private enum Identifiers {
        static let firstName = "First name"
        static let lastName = "Last name"
        static let toggle1 = "Toggle 1"
        static let toggle2 = "Toggle 2"
        static let toggle1OnState = "Toggle 1, true"
        static let toggle1OffState = "Toggle 1, false"
        static let toggle2OnState = "Toggle 2, true"
        static let toggle2OffState = "Toggle 2, false"
        static let menu = "Menu"
        static let name = "name"
        static let firstNameLabel = "First name, First name"
        static let menuNavigation = "_TtGC7SwiftUIP13$7fff5695965428DestinationHosting"
    }
    
    private lazy var firstName = app.textFields[Identifiers.firstName]
    private lazy var lastName = app.textFields[Identifiers.lastName]
    private lazy var backButton = app.buttons[Identifiers.menu]
    private lazy var toggle1Value = app.tables.cells[Identifiers.toggle1].switches[Identifiers.toggle1].value as! NSString
    private lazy var toggle2Value = app.tables.cells[Identifiers.toggle2].switches[Identifiers.toggle2].value as! NSString
    private lazy var toggle1 = app.tables.cells[Identifiers.toggle1].switches[Identifiers.toggle1]
    private lazy var toggle2 = app.tables.cells[Identifiers.toggle2].switches[Identifiers.toggle2]
    private lazy var firstNameData = app.cells.element(boundBy: 4).label
    private lazy var lastNameData = app.cells.element(boundBy: 5).label
    private lazy var toggle1Text = app.tables.cells[Identifiers.toggle1].staticTexts["false"]
    private lazy var toggle2Text = app.cells.element(boundBy: 3).value as! NSString
    private lazy var firstNameLabel = app.tables.cells[Identifiers.firstNameLabel].staticTexts[Identifiers.firstName]
    
    
    func verifyNavigatedSuccessfullyFormScreen() -> Self{
        verifyElementExists(firstNameLabel)
        return self
    }
    
    func tapBackButton() -> MenuScreen {
        tapButton(element: backButton)
        return MenuScreen()
    }
    
    func typeFirstName(valueToType: String) -> Self{
        typeTextToTextFields(element: firstName, textToEnter: valueToType)
        return self
    }
    
    func typeLastName(valueToType: String) -> Self{
        typeTextToTextFields(element: lastName, textToEnter: valueToType)
        return self
    }
    
    func switchToggle1() -> Self{
        switchToggle(element: toggle1)
        return self
    }
    
    func switchToggle2() -> FormScreen{
        switchToggle(element: toggle2)
        Utils.wait(secs: Utils.timeInterval)
        return FormScreen()
    }
    
    func getToggleValue(toggleStatus: NSString,toggleState: String) -> NSString{
        var toggleValue: NSString? = ""
        switch(toggleState){
            case "Toggle 1, true":
                toggleValue = (app.tables.cells[toggleState].staticTexts["true"].label as NSString)
            case "Toggle 1, false":
                toggleValue = (app.tables.cells[toggleState].staticTexts["false"].label as NSString)
            case "Toggle 2, true":
                toggleValue = (app.tables.cells[toggleState].staticTexts["true"].label as NSString)
            case "Toggle 2, false":
                toggleValue = (app.tables.cells[toggleState].staticTexts["true"].label as NSString)
            default:
                print("Not a valid state provided.")
        }
        if toggleValue == "true" {
            toggleValue = "1"
        } else if toggleValue == "false"{
            toggleValue = "0"
        } else {
            print("value is nill.")
        }
        return toggleValue! as NSString
    }
    
    func verifyToggle1Value() {
        XCTAssertEqual(toggle1Value,getToggleValue(toggleStatus: toggle1Value, toggleState: Identifiers.toggle1OnState))
    }
    
    func verifyToggle2Value() {
        switchToggle(element: toggle2)
        XCTAssertEqual(toggle2Value,getToggleValue(toggleStatus: toggle2Value, toggleState: Identifiers.toggle2OnState))
    }
    
    func verifyFirstNameWithValue(valueToVerify: String) {
        verifyElementExists(firstName)
        XCTAssertEqual(Utils.getSubString(stringToSubstring: firstNameData,strToFetch:Identifiers.name), valueToVerify)
    }
    
    func verifyLastNameWithValue(valueToVerify: String) {
        verifyElementExists(lastName)
        XCTAssertEqual(Utils.getSubString(stringToSubstring: lastNameData,strToFetch:Identifiers.name), valueToVerify)
    }
}
