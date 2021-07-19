//
//  ContentView.swift
//  Shared
//
//  Created by Krystian Magiera on 18/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
            VStack(alignment: .center) {
                NavigationLink(destination: EditForm()) {
                    Text("Form")
                        .font(.title)
                }
                
            }
                VStack{
                NavigationLink(destination: FeatureList()) {
                    Text("List")
                        .font(.title)
                    }
                }
                
            }
                .navigationTitle("Menu")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
