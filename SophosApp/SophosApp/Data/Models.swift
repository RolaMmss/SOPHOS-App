//
//  Models.swift
//  SophosApp
//
//  Created by Rola El Moallem on 21/09/2022.
//

import Foundation


class ScholarTask: Identifiable, ObservableObject{
    var id = UUID()
    var image: String
    @Published var isSwitch: Bool
    
    init(image: String, isSwitch: Bool = false){
        self.image = image
        self.isSwitch = isSwitch
    }
}


class CleaningTask: Identifiable, ObservableObject{
    var id = UUID()
    var image: String
    @Published var isSwitch2: Bool
    
    init(image: String, isSwitch2: Bool = false){
        self.image = image
        self.isSwitch2 = isSwitch2
    }
}




