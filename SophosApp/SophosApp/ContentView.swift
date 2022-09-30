//
//  ContentView.swift
//  SophosApp
//
//  Created by Rola El Moallem on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("ContentView")
       

        TabView{
                    ScholarView()
                    //view préalablement créée
                        .tabItem {
                            Label("Tâches Ménagères", systemImage: "m.square")
                        }
                  CleaningView()
                        .tabItem {
                                       Label("Tâches Scolaires", systemImage: "s.square")
                                   }
        }
//        SelectedTasks()
        
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}

