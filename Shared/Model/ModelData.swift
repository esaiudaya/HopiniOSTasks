//
//  ModelData.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 18/07/2021.
//

import Foundation

var features: [Feature] = load()

func load<T: Decodable>() -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: "featureData", withExtension: "json")
    else {
        fatalError("Couldn't find in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse as \(T.self):\n\(error)")
    }
}
