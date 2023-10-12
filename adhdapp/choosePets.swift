//
//  choosePets.swift
//  adhdapp
//
//  Created by Ahlamalmutiri on 25/03/1445 AH.
//
//
import Foundation
import SwiftUI

struct choosePets: View{
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.cBack) .edgesIgnoringSafeArea(.all)
                
                VStack{
                    HStack{
                        Text("اختر رفيقك ")
                            .font(.largeTitle)
                        Text("اهلا احمد!")
                            .font(.largeTitle)
                            .foregroundColor(Color(.text1))
                    }
                    
                    
                    HStack{
                        
                        
                        SelectButton2(isSelected: $isSelected1, image2: Image("cat") , color: .accentColor)
                            .onTapGesture {
                                isSelected1.toggle()
                                if isSelected1{
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                }
                            }
                           .padding()
                        SelectButton2(isSelected: $isSelected2, image2: Image("brid") , color: .accentColor)
                            .onTapGesture {
                                isSelected2.toggle()
                                if isSelected2{
                                    isSelected1 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                }
                            }}
                    HStack{
                        SelectButton2(isSelected: $isSelected3, image2: Image("Rabit") , color: .accentColor)
                            .onTapGesture {
                                isSelected3.toggle()
                                if isSelected3{
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected4 = false
                                }
                            }
                           .padding()
                        SelectButton2(isSelected: $isSelected4, image2: Image("dog") , color: .accentColor)
                            .onTapGesture {
                                isSelected4.toggle()
                                if isSelected4{
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected1 = false
                                }
                            }
                        
                        
                        
                    }
                    NavigationLink("هيا بنا!" , destination: choosePets())
                        .font(.largeTitle)
                        .frame(width: 300 , height: 100)
                        .foregroundColor(Color.white)
                        .background(Color(.frame))
                        .cornerRadius(42)
                        .padding()
                }
                
                
               
            }
           
            
            
        }}}


#Preview {
    
    choosePets()
}
