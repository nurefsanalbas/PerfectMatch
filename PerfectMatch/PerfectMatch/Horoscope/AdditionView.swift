//
//  AdditionView.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

struct AdditionView: View {
    @State var horoscopes : ZodiacSign
    var color = ColorModel()
    var font = fontModel()
    var body: some View {
        ScrollView{
            
            Image(horoscopes.imageName)
                .resizable()
                .aspectRatio(contentMode:.fit)
               // .shadow(radius: 12)
                .frame(width: 200, height: 200, alignment: .center)
               
            
            VStack{
                Text(horoscopes.zodiacName)
                    .bold()
                    .foregroundColor(color.colorHeight)
                    .font(.custom(font.font, size: 45, relativeTo: .title))
                    .frame(width: 300, height: 50, alignment: .center)
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(color.colorWeight)
                        .frame(width: UIScreen.main.bounds.width*0.93, height: 300,alignment: .center)
                
                    Text(horoscopes.text)
                        .font(.custom(font.font, size: 18, relativeTo: .callout))
                        .frame(width: UIScreen.main.bounds.width*0.85, height: 300,alignment: .center)
                        .foregroundColor(.white)
                  
                }
                ZStack{
          
                RoundedRectangle(cornerRadius: 25)
                        .fill(color.colorHeight)
                    .frame(width: UIScreen.main.bounds.width*0.93, height: 300,alignment: .center)
            
                Text(horoscopes.text2)
                    .font(.custom(font.font, size: 18, relativeTo: .callout))
                    .frame(width: UIScreen.main.bounds.width*0.85, height: 300,alignment: .center)
                    .foregroundColor(.white)
                }
            }
            
        }
    }
}

struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionView(horoscopes: horoscope[2])
    }
}
