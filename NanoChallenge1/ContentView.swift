//
//  ContentView.swift
//  Saitama100
//
//  Created by Felix Natanael on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var quest1 = false
    @State private var quest2 = false
    @State private var quest3 = false
    @State private var quest4 = false
    @State private var quest5 = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Back")
                    
                Spacer()
                HStack {
                    Text("XP")
                        .foregroundColor(.white)
                        .padding(7)
                        .background(.blue)
                    .cornerRadius(100)
                    
                    Text("20/100")
                        .font(.title2)
                }
            }
            Text("Quest")
            Spacer()
            List{
                
                VStack {
                    HStack {
                        Toggle(isOn : $quest1){}
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            Text("quest 1")
                                .font(.largeTitle)
                            HStack {
                                Text("XP")
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(.blue)
                                .cornerRadius(100)
                                
                                Text("20")
                                    .font(.title)
                            }
                        }
                    }
                    
                    HStack {
                        Toggle(isOn : $quest2){}
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            Text("quest 2")
                                .font(.largeTitle)
                            
                            HStack {
                                Text("XP")
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(.blue)
                                .cornerRadius(100)
                                
                                Text("20")
                                    .font(.title)
                            }
                        }
                    }
                    
                    
                    HStack {
                        Toggle(isOn : $quest3){}
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            Text("quest 3")
                                .font(.largeTitle)
                            HStack {
                                Text("XP")
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(.blue)
                                .cornerRadius(100)
                                
                                Text("20")
                                    .font(.title)
                            }
                        }
                    }
                    
                    HStack {
                        Toggle(isOn : $quest4){}
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            Text("quest 4")
                                .font(.largeTitle)
                            HStack {
                                Text("XP")
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(.blue)
                                .cornerRadius(100)
                                
                                Text("20")
                                    .font(.title)
                            }
                        }
                    }
                    
                    HStack {
                        Toggle(isOn : $quest5){}
                        .toggleStyle(iOSCheckboxToggleStyle())
                        .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            Text("quest 2")
                                .font(.largeTitle)
                            
                            HStack {
                                Text("XP")
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(.blue)
                                .cornerRadius(100)
                                
                                Text("20")
                                    .font(.title)
                            }
                        }
                    }
                    
                }
                
                
                
                
                
                
//                HStack {
//                    Toggle(isOn : $isOn){}
//                    .toggleStyle(iOSCheckboxToggleStyle())
//                    .foregroundColor(.black)
//                    Text("quest 1")
//                }
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
        
    }
}





