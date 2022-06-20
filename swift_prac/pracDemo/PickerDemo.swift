//
//  PickerDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct PickerDemo: View {
    
    @State var selection:PickerItem = PickerItem.Java
    var body: some View {
        VStack{
            Picker("select the language", selection: $selection){
                Text("Java").tag(PickerItem.Java)
                Text("Python").tag(PickerItem.Python)
                Text("C").tag(PickerItem.C)
            }
//            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

enum PickerItem{
    case Java
    case Python
    case C
}

struct PickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}
