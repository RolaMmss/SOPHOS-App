//
//  ScholarView.swift
//  SophosApp
//
//  Created by Rola El Moallem on 21/09/2022.
//

import SwiftUI
struct ScholarView: View {
    //-----------------------
    
    //-----------------------
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),//GridItem(.flexible(minimum: 100)),//  GridItem(.flexible(minimum: 100)),
                 ]
    //-------------------------
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
                NavigationView {
                    ScrollView {
                        LazyVGrid(columns: layout, content: {
                            ForEach(scholarTasks) { item in
                                ButtonTask(scholarTask: item)   //Button
                            }  // foreach
                            .navigationTitle("Tâches scolaires")
        //            .foregroundColor(.red)
                            .padding()
                        } //Content
                                    )  //LazyVGrid
                                            
                                  } //ScrollView
                              } // NavigationViewπ
            }
            Button("Valider") {
                    // activate theme!
            }
        } // Zstack
        
      }  // body
   
    //--------------
  }   //structview

struct ScholarView_Previews: PreviewProvider {
    static var previews: some View {
        ScholarView()
            
    }
}

struct ButtonTask: View {
    @ObservedObject var scholarTask : ScholarTask
    var body: some View {
        VStack {
            Button( action:{
                scholarTask.isSwitch.toggle()
                selectedScholarTasks.append(scholarTask)
            }, label: {
                ZStack{
                    Image(scholarTask.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .border(Color.secondary)
                        .cornerRadius(12)
                        .padding()
                    Image(systemName: "checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .border(Color.secondary)
                        .cornerRadius(12)
                        .padding()
                        .opacity(scholarTask.isSwitch ? 1 : 0)
                    
                    
                    Spacer()
                }  // VSack
            }  // label
            )
            
    }
}
}
            
