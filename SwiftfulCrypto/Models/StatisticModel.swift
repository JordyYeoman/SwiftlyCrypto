//
//  StatisticsModel.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 7/3/22.
//

import Foundation

// To use a model in a foreach loop, it needs to conform to either identifiable or hashable
struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil){
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
}


