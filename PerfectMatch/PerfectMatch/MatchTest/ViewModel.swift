//
//  ViewModel.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var manName:String=""
    @Published var womanName:String=""
    @Published var manAge:String=""
    @Published var womanAge:String=""
    @Published var manHoroscope:String=""
    @Published var womanHoroscope:String=""
    @Published var manHeight:String=""
    @Published var womanHeight:String=""
    @Published var manWeight:String=""
    @Published var womanWeight:String=""
    @Published var manLevel:String="None"
    @Published var womanLevel:String="None"
    var levels = ["High School", "Universty", "Primary", "None"]

}
