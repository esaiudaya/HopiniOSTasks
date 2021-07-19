//
//  Features.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 18/07/2021.
//

import Foundation
import SwiftUI

struct Feature: Hashable, Codable {
    var id: String
    var name: String
    var description: String
    var score: String
    var details: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}


