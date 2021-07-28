//
//  MenuTest.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import XCTest

class MenuTest: Tests_iOS {

   //Validate navigation is working for "Form"
    func testNavigateToFormScreen(){
        MenuScreen().tapFormButton()
            .verifyNavigatedSuccessfullyFormScreen()
            .tapBackButton()
    }
    
    //Validate navigation is working for "List"
    func testNavigateToListScreen(){
        MenuScreen().tapListButton()
            .verifyNavigatedSuccessfullyListScreen()
            .tapBackButton()
    }

}
