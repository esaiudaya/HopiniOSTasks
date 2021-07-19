//
//  EditForm.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 19/07/2021.
//

import SwiftUI

struct EditForm: View {
    @State var FirstName: String = ""
    @State var LastName: String = ""
    @State var isToogle: Bool = false
    @State var isToogle2: Bool = false
    
    var body: some View {
        List {
            HStack {
                Text("First name").bold()
                Divider()
                TextField("First name", text: $LastName)
            }
            HStack {
                Text("Last name").bold()
                Divider()
                TextField("Last name", text: $FirstName)
            }
            VStack{
                Toggle("Toggle 1", isOn: $isToogle)
            }
            VStack{
                Toggle("Toggle 2", isOn: $isToogle2)
            }
            HStack {
                Text("First name")
                Text(FirstName)
            }
            HStack {
                Text("Last name")
                Text(LastName)
            }
            HStack {
                Text("Toggle 1")
                let result1 = String(isToogle)
                Text(result1)
            }
            HStack {
                Text("Toggle 2")
                Text("true")
            }
        }

    }
}

struct EditForm_Previews: PreviewProvider {
    static var previews: some View {
        EditForm()
    }
}
