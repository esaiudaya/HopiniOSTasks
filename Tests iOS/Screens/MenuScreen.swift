//
//  FormScreen.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import XCTest

class MenuScreen: Screen {
    
    private enum Identifiers {
        static let form = "Form"
        static let list = "List"
        static let menu = "Menu"
    }
    
    private lazy var formButton = app.buttons[Identifiers.form]
    private lazy var listButton = app.buttons[Identifiers.list]
    private lazy var menuBar = app.navigationBars[Identifiers.menu]
    
    func verifyAppLaunchedSuccessfully() -> Self {
        verifyElementExists(menuBar)
        return self
    }
    
    func tapFormButton() -> FormScreen {
        tapButton(element: formButton)
        return FormScreen()
    }
    
    func tapListButton() -> ListScreen {
        tapButton(element: listButton)
        return ListScreen()
    }
}

