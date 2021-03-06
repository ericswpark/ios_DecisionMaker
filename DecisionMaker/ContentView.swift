//
//  ContentView.swift
//  DecisionMaker
//
//  Created by Eric Park on 2021/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var first_option: String = ""
    @State private var second_option: String = ""
    @State private var decision: String = "Decision will be shown here"
    
    var body: some View {
        VStack {
            TextField("First option", text: $first_option)
                .padding(.all)
            TextField("Second option", text: $second_option)
                .padding(.all)
            HStack{
                Button(action: {
                    decision = [first_option, second_option, "Fuck you"].randomElement()!
                }) {
                    Text("Choose")
                }
                .padding(.trailing)
                Button(action: {
                    decision = "Decision will be shown here"
                    first_option = ""
                    second_option = ""
                }) {
                    Text("Clear all")
                }
                .padding(.leading)
            }
            .padding(.vertical)
            
            Text("\(decision)")
                .padding(.top, 80.0)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
