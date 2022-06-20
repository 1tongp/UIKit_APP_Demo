//
//  TextEditorDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct TextEditorDemo: View {
    
//    @State var text = ""
    @State var username:String = ""
    var body: some View {
//        TextEditor(text: $text)
        TextField("username", text: $username) { (isEditing) in print("\(isEditing)")
        } onCommit: {
            print("onCommit")
        }
        
    }
}

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
