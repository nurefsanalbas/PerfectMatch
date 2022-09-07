//
//  MatchTest.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

struct MatchTest: View {
    @StateObject var vm = ViewModel()
    var font = fontModel()
    var color = ColorModel()
    @State var result = false
    @State var resultPoint = 0
    @State var isAlert: Bool = false
    var body: some View {
        
        VStack{
            HStack{
                Image("person")
                //Image(systemName: "person")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .padding(.leading,30)//baş
                Spacer()
                Image("heart (1)")
                    .resizable()
                    .frame(width: 55, height: 55)
                Spacer()
            //Image(systemName: "person.fill")
                Image("person")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .padding(.trailing,30)
                
            }.padding(.top,UIScreen.main.bounds.height * 0.05)
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorName)
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                HStack{
                    TextField("Alex",text: $vm.manName).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    Text("NAME")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                    
                    TextField("Alice", text: $vm.womanName).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorAge)
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                HStack{
                    TextField("28", text: $vm.manAge).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    
                    Text("AGE")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                    TextField("30", text: $vm.womanAge).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorHoroscope)
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                HStack{
                    TextField("Leo", text: $vm.manHoroscope).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    Text("HOROSCOPE")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                    TextField("Leo", text: $vm.womanHoroscope).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorHeight)
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                HStack{
                    TextField("190", text: $vm.manHeight).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    Text("HEIGHT")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                    TextField("170", text: $vm.womanHeight).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorWeight)
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                HStack{
                    TextField("80", text: $vm.manWeight).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    Text("WEIGHT")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                    TextField("60", text: $vm.womanWeight).foregroundColor(.white)
                        .padding().multilineTextAlignment(.center)
                    
                }}
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(color.colorEducation)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.10)
                VStack{
                    
                    HStack {
                        Menu {
                            ForEach(vm.levels, id: \.self) { level in
                                Button(action: {
                                    vm.manLevel = level
                                    
                                }, label: {
                                    Text(level)
                                    
                                }) .padding()
                            }
                        } label: {
                            Text(vm.manLevel)
                                .foregroundColor(.black.opacity(0.3))
                        }
                        Text("EDUCATION")
                            .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                            .foregroundColor(Color( red: 201/255, green: 201/255, blue: 202/255))
                        Menu {
                            ForEach(vm.levels, id: \.self) { level in
                                Button(action: {
                                    vm.womanLevel = level
                                }, label: {
                                    Text(level)
                                    
                                }).padding()
                            }
                        } label: {
                            Text(vm.womanLevel)
                                .frame(width: 90, height: 60, alignment:.center)
                                .foregroundColor(.black.opacity(0.3))
                            
                        }
                    }
                    
                }}
            HStack{
                Spacer()
                Button(action: {
                    
                    let nameResult = calculateNamePoint(name1: vm.manName, name2: vm.womanName)
                    let ageResult = calculateAge(age1: vm.manAge, age2: vm.womanAge)
                    let horoscopeResult = calculateHoroscope(horoscopeMale: vm.manHoroscope, horoscopeFemale: vm.womanHoroscope)
                    let heightResult = calculateHeight(heightMale: vm.manHeight, heightFemale: vm.womanHeight)
                    let weightResult = calculateWeight(weightMale: vm.manWeight, weightFemale: vm.womanWeight)
                    var levelResult = 0
                    if vm.manLevel == vm.womanLevel{
                        levelResult = 20
                    }
                    else{
                        
                        levelResult = 10
                    }
                    
                    
                    
                    if vm.manName.isEmpty || vm.womanName.isEmpty || vm.manAge.isEmpty || vm.womanAge.isEmpty || vm.manHoroscope.isEmpty || vm.womanHoroscope.isEmpty || vm.manWeight.isEmpty || vm.womanWeight.isEmpty || vm.manHeight.isEmpty || vm.womanHeight.isEmpty || vm.manLevel.isEmpty || vm.womanLevel.isEmpty {
                        isAlert = true
                    }
                    if isAlert == true {
                        result = false
                    }
                    else{
                        resultPoint = nameResult + ageResult + horoscopeResult + heightResult + weightResult + levelResult
                        result = true
                    }
                    
                    
                }, label: {
                    Text("CALCULATE")
                        .foregroundColor(.white)
                        .padding()
                    
                    
                }
                ).alert(isPresented: $isAlert, content: {
                    Alert(title: Text("Please fill in the all blanks!"))
                }).sheet(isPresented: self.$result,content: {
                    Results(RESULTPOINT: resultPoint)
                    
                })
                
                Spacer()
                
            }
            .background(color.colorCalculate)
            .clipShape(Capsule())
            .offset( y: 4)
            
            Spacer()
            
            Text(String(resultPoint))
                .padding(.bottom,UIScreen.main.bounds.height * 0.14)
        } .font(.custom(font.font, size: 20, relativeTo: .title))
        
            .background(.white)
    }
}

struct MatchTest_Previews: PreviewProvider {
    static var previews: some View {
        MatchTest()
    }
}

