//
//  List.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import XCTest

class ListTest: Tests_iOS {

    
    func testVerifyListNavigation() {
        MenuScreen().tapListButton()
            .verifyNavigatedSuccessfullyListScreen()
            .verifyListOfFeaturesWithImage()
    }
    
    func testVerifyListNavigationWithDescription() {
        MenuScreen().tapListButton()
            .verifyNavigatedSuccessfullyListScreen()
            .verifyListOfFeaturesWithDescription()
    }

}
