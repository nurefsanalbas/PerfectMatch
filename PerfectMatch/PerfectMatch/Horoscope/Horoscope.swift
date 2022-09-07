//
//  Horoscope.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 23.07.2022.
//

import SwiftUI


struct Horoscope: View {
    var color = ColorModel()
   var font = fontModel()
    var body: some View {
      
        NavigationView{
            
            VStack{
                List(horoscope){ element in
                    NavigationLink(destination: AdditionView(horoscopes: element), label: {
                    
                        HoroscopeRow(horoscopes: element)
                    })
                    
                }  .navigationTitle("Zodiac Sign").font(.custom(font.font, size: 20, relativeTo: .title))
                    .foregroundColor(color.colorHeight)
                   
                    
                   

            }
            }
       

   }
}



struct Horoscope_Previews: PreviewProvider {
    static var previews: some View {
        Horoscope()
    }
}
