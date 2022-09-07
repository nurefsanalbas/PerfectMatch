//
//  ContentView.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var temp1 = false
    @State var temp2 = false
    @State var temp3 = false

    var body: some View {
      
        NavigationView{
            VStack{
                
                Button(action: {
                    temp1 = true
                }, label: {
                    ZStack{
                    Text("HOROSCOPES")
                        .bold()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.30, alignment: .center)
                        .offset( y: -60)
                        .foregroundColor(.white)
                        .font(.custom("Chalkboard SE", size: 30, relativeTo: .title))
                        .background((Color(red: 223 / 255, green: 182 / 255, blue: 195 / 255)))
                        .padding(.bottom,30)
                    Image("virgo (2)").resizable().frame(width: 70, height: 70, alignment: .center)
                    }   }
                ).sheet(isPresented: $temp1,content:{
                    Horoscope()
                })
           
                NavigationLink(destination: MatchTest() , isActive: $temp2) {
                Button(action: {
                    temp2 = true
                }, label: {
                    ZStack{
                    Text("PERFECT MATCH TEST")
                        .bold()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.33, alignment: .center)
                        .offset( y: -30)
                        .foregroundColor(.white)
                        .font(.custom("Chalkboard SE", size: 29, relativeTo: .title))
                        .background(Color(red: 113 / 255, green: 187 / 255, blue: 202 / 255))
                        
                        Image("jigsaw").resizable().frame(width: 70, height: 70, alignment: .center)
                            .offset( y: 30)
                        
                    }  })
                }.offset( y: -40)
                
                NavigationLink(destination: NameAnalysis(), isActive: $temp3){
                    Button(action: {
                        temp3 = true
                    }, label: {
                        
                        ZStack{
                        Text("NAME ANALYSIS")
                            .bold()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                            .foregroundColor(.white)
                            .offset( y: -30)
                            .font(.custom("Chalkboard SE", size: 30, relativeTo: .title))
                            .background(Color(red: 188 / 255, green: 220 / 255, blue: 235 / 255))
                           // .background(Color(red: 243 / 255, green: 166 / 255, blue: 192 / 255))
                            Image("magnifier").resizable().frame(width: 70, height: 70, alignment: .center)
                                .offset( y: 30)
                        
                        }  })
                } .offset( y: -50)
                
            //VStack
            }//NavigationView
            
        .background(Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255))
            
        }
    
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
