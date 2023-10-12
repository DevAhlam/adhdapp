//
//  ContentView.swift
//  adhdapp
//
//  Created by Ahlamalmutiri on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var nameChild: String = ""
    var body: some View {
       
        ZStack{
            
            Color(.cBack) .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                
               Text("اهلا ياصديقنا ! ساعدنا بالتعرف عليك ")
                    .font(.largeTitle)
            
                TextField( " اسمك",  text: $nameChild  )
                    .padding(.leading , 300)
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .frame(width: 673 , height: 95)
                    .background(Color.gray.opacity(0.09))
                    .cornerRadius(29)
                
               
            }}}}


$Preview { ContentView() }


