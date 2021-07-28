//
//  ListScreen.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import XCTest


class ListScreen: Screen {
    
    private enum Identifiers {
        static let backButtonLabel = "Menu"
        static let navigaionBar = "Features"
        static let virtualVenue = "Virtual venue"
        static let studioStreamYard = "Studio by StreamYard"
        static let eventMarketing = "Event Marketing"
        static let onSite = "Onsite"
        static let photo = "photo"
        static let stage = "stage"
        static let streamYard = "StreamYard"
        static let landingPages = "LandingPages"
        static let hybrid = "hybrid"
        static let virtualVenueDes = "Create an immersive attendee experience with interactive programming for both digital and onsite audiences"
        static let studioStreamYardDes = "Produce professional, reliable streams easily leveraging StreamYard's innovative broadcast studio"
        static let eventMarketingDes = "Promote your event with beatiful, easy to build landing pages designed to drive registrations and ticket sales"
        static let onSiteDes = "Optimize your in-person experience with best-in-class capabilities like badge printing and lead retrieval"
    }
    
    
    private lazy var backButton = app.buttons[Identifiers.backButtonLabel]
    private lazy var navigationBar = app.navigationBars[Identifiers.navigaionBar]
    private lazy var virtualOneButton = app.buttons[Identifiers.virtualVenue]
    private lazy var studioStreamYardButton = app.buttons[Identifiers.studioStreamYard]
    private lazy var eventMarketingButton = app.buttons[Identifiers.eventMarketing]
    private lazy var onSiteButton = app.buttons[Identifiers.onSite]
    private lazy var headerVitrualVenue = app.navigationBars[Identifiers.virtualVenue].staticTexts[Identifiers.virtualVenue].label
    private lazy var headerstudioStreamYard = app.navigationBars[Identifiers.studioStreamYard].staticTexts[Identifiers.studioStreamYard].label
    private lazy var headereventMarketing = app.navigationBars[Identifiers.eventMarketing].staticTexts[Identifiers.eventMarketing].label
    
    //Feautures  dictionary
    let featureNameListDict = [Identifiers.virtualVenue:Identifiers.virtualVenueDes,Identifiers.studioStreamYard:Identifiers.studioStreamYardDes,Identifiers.eventMarketing:Identifiers.eventMarketingDes,Identifiers.onSite:Identifiers.onSiteDes]
    
    //List of features
    let  featureNameList = [Identifiers.virtualVenue,Identifiers.studioStreamYard,Identifiers.eventMarketing,Identifiers.onSite]
    
    //This func will tap on the back button and return the MenuScreen object.
    func tapBackButton() -> MenuScreen {
        tapButton(element: backButton)
        return MenuScreen()
    }
    
    //Asserting List screen is properly loaded or not.
    func verifyNavigatedSuccessfullyListScreen() -> Self{
        verifyElementExists(navigationBar)
        return self
    }
    
    
    func verifyListOfFeaturesWithImage() {
        var i = 0
        featureNameList.forEach{ key in
            XCTAssertEqual(app.tables.cells[key].label, key)
            app.tables.cells.buttons[key].tap()
            Utils.wait(secs: Utils.timeInterval)
            i += 1
            let imageId = String(format: "%@%d", Identifiers.photo,i)
            print("Image id is \(imageId)")
            
            //Validating header text
            XCTAssertEqual(app.navigationBars[key].staticTexts[key].label, key)
            
            //Validating image is available
            XCTAssert(app.images[imageId].exists,"Image is not exist")
            
            XCTAssertEqual(app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.staticTexts[key].label,app.navigationBars[key].staticTexts[key].label)
            app.navigationBars[key].buttons["Features"].tap()
            Utils.wait(secs: Utils.timeInterval)
        }
    }
    
    
    
    func verifyListOfFeaturesWithDescription() {
        featureNameListDict.forEach{(key,value) in
            XCTAssertEqual(app.tables.cells[key].label, key)
            app.tables.cells.buttons[key].tap()
            Utils.wait(secs: Utils.timeInterval)
            XCTAssertEqual(app.staticTexts[value].label, value)
            app.navigationBars[key].buttons["Features"].tap()
            Utils.wait(secs: Utils.timeInterval)
        }
    }
}

