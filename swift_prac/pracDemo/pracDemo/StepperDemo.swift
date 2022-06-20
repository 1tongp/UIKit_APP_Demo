//
//  StepperDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct StepperDemo: View {
    
    @State var stepperValue = 0
    var body: some View {
        Stepper("Stepper", value:$stepperValue)

    }
}

struct StepperDemo_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemo()
    }
}
