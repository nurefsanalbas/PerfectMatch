//
//  NameAnalysis.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 1.08.2022.
//

import SwiftUI

struct NameAnalysis: View {
    @State var userName = ""
    @State var text = false
    @State var showText = false
    @State var wordtext = ""
    @State var isBlank = false
    @State var showResultBox = false
    var font = fontModel()
    var color = ColorModel()
    var body: some View {
        
        
        self.color.colorAge
        .ignoresSafeArea(.all)
               .overlay(
                ScrollView{
        VStack(spacing:10){
            ZStack{
            RoundedRectangle(cornerRadius: 25)
                    .fill(self.color.colorRectangle)
                .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.3,alignment: .center)
                
                VStack{
            Image("searching")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                
            HStack{
            /*Text("NAME:")
                    .font(.custom(self.font.font, size: 20))
                .bold()
                .foregroundColor(.white)*/
                TextField("Name",text: $userName)
                .border(.secondary)
                .frame(width: 200, alignment: .center)
                .foregroundColor(.white)
                .font(.custom(font.font, size: 20, relativeTo: .title))
                
            }
                    
        }
                
    }
                .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.2, alignment: .center)
        
            
            Button(action: {
                if userName.isEmpty{
                    isBlank = true
                }
                showResultBox = true
                wordtext = makeAnalysis(name: userName)
                 if text == true {
                  showText = true
                  
                 }
            },
                   label:{
                Text("SHOW RESULT")
                    .font(.custom(self.font.font, size: 17))
                    .padding()
                
            }).alert(isPresented: $isBlank, content: {
                Alert(title: Text("Please enter a name!"))
            } )
                
                .foregroundColor(.white)
                .background(self.color.colorHeight)
                .clipShape(Capsule())
                .padding(.top,40)
        
            ZStack {
                if (showResultBox == true){
                RoundedRectangle(cornerRadius: 25)
                        .fill(.white.opacity(0.8))
                    .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.44,alignment: .center)
                Text(wordtext)
                    .font(.custom(self.font.font, size: 20))
                    .foregroundColor(color.colorHeight)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.44, alignment: .center)
              
                }
                
            }
   
        }
                })
        
    }
   func makeAnalysis(name:String)-> String{
       var text2 :String = ""
        for element in alphabetArray{
            if name.isEmpty{
                isBlank = true
            }
            else{
            if name.first! == element.wordBig || name.first! == element.wordSmall {
                text = true
                text2 = element.textName
            }
                
            }
        }
       return text2
    }
    
}

struct NameAnalysis_Previews: PreviewProvider {
    static var previews: some View {
        NameAnalysis()
    }
}
