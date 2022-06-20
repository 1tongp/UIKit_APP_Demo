//
//  TextFieldDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct TextFieldDemo: View {
    
    @State var username: String = ""
    
    var body: some View {
        TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.black)
            .padding()
    }
}

struct TextFieldDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDemo()
            .previewDevice("iPhone 13 Pro")
    }
}
