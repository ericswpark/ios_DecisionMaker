//
//  ContentView.swift
//  DecisionMaker
//
//  Created by Eric Park on 2021/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var first_decision: String = ""
    @State private var second_decision: String = ""
    @State private var decision: String = "Decision will be shown here"
    
    var body: some View {
        VStack {
            TextField("First decision", text: $first_decision)
                .padding(.all)
            TextField("Second decision", text: $second_decision)
                .padding(.all)
            Button(action: {
                decision = [first_decision, second_decision, "Fuck you"].randomElement()!
            }) {
                Text("Choose Decision")
            }
            .padding(.vertical)
            
            
            
            
            Text("\(decision)")
                .padding(.top, 20.0)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
