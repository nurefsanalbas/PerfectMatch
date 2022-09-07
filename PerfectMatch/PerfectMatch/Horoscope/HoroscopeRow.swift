//
//  HoroscopeRow.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

struct HoroscopeRow: View {
    @State var horoscopes : ZodiacSign
    var font = fontModel()
    var color = ColorModel()
    var body: some View {
        HStack{
            Image(horoscopes.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .shadow(radius: 7)
                .frame(width: 80, height: 80, alignment: .leading)
                .padding()
            VStack{
                HStack{
                    Text(horoscopes.zodiacName)
                        .font(.custom(font.font, size: 20,relativeTo: .title))
                        .bold()
                    
                }
                Text(horoscopes.date)
                  
                    .font(.custom(font.font, size: 15,relativeTo: .callout))
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.2, alignment: .leading)
            .padding(.trailing)
        
        
        
    }
}

struct HoroscopeRow_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeRow(horoscopes : horoscope[0])
    }
}
