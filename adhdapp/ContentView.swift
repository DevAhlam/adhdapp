//
//  ContentView.swift
//  adhdapp
//
//  Created by Ahlamalmutiri on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var isUppercase = false
    @State private var isRevered = false
    @State private var counter : Int = 0
    var body: some View {
        VStack{
            
            Text("Water tracker 💦")
            Toggle("Apple health", isOn: $isUppercase)
            
            Stepper("Cup to drink per day \(counter)" ,
                    value : $counter , in : 0...200,
                    step: 1 )
           
            Button() {
            }label: {
                Text("Continue")
            }
          
            
        
        }
            
        
            
        


        }
            
      
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
