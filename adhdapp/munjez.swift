//
//  ContentView.swift
//  adhdapp
//
//  Created by Ahlamalmutiri on 20/03/1445 AH.
//
//
import SwiftUI

struct munjez: View {
    @State private var nameChild: String = ""
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    
    
    
    var body: some View {
      
        NavigationStack{
        ZStack{
         
            Color(.cBack) .edgesIgnoringSafeArea(.all)
                    VStack{
                        
                        HStack{
                            Text("ساعدنا بالتعرف عليك")
                                .font(.largeTitle)
                            Text("أهلاً ياصديقنا !")
                                .foregroundColor(Color(.text1))
                                .font(.largeTitle)
                            
                        }
                        .padding()
                        TextField( " اسمك",  text: $nameChild  )
                            .padding(.leading , 300)
                            .foregroundColor(.gray)
                            .font(.largeTitle)
                            .frame(width: 700 , height: 95)
                            .background(Color.gray.opacity(0.09))
                            .cornerRadius(29)
                        
                            .padding(.top , 50)
                        
                        HStack{
                            
                            
                            SelectButton(isSelected: $isSelected1, image1: Image("girl") , color: .accentColor)
                                .onTapGesture {
                                    isSelected1.toggle()
                                    if isSelected1{
                                        isSelected2 = false
                                    }
                                }
                            
                            
                            
                            SelectButton(isSelected: $isSelected2,image1: Image("boy") ,color: .accentColor)
                                .onTapGesture {
                                    isSelected2.toggle()
                                    if isSelected2{
                                        isSelected1 = false
                                    }
                                }
                            
                            
                        }
                      
                        .padding(.top , 30)
                        
                        
                        NavigationLink("هيا بنا!" , destination: choosePets())
                            .font(.largeTitle)
                            .frame(width: 300 , height: 100)
                            .foregroundColor(Color.white)
                            .background(Color(.frame))
                            .cornerRadius(42)
                            .padding()
                          
                        
                    }
                    
                }
               
                
            }
            
            
            
        }
        
        
    }





#Preview {
    munjez()
    
}

