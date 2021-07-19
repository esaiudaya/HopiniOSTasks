//
//  ContentView.swift
//  Shared
//
//  Created by Krystian Magiera on 18/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Main contener")
                .font(.title)
            HStack {
                Text("Test 1")
                    .font(.subheadline)
                Spacer()
                Text("Test text")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
