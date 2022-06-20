//
//  SecureFieldDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct SecureFieldDemo: View {
    
    @State var password = ""
    
    var body: some View {
        SecureField("password", text: $password)
    }
}

struct SecureFieldDemo_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldDemo()
    }
}
