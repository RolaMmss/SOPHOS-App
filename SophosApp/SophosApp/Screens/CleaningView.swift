//
//  ScholarView.swift
//  SophosApp
//
//  Created by Rola El Moallem on 21/09/2022.
//

import SwiftUI

struct CleaningView: View {
    let layout = [
        GridItem(.flexible(minimum: 100)),//, maximum: 150)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
        NavigationView{
            ScrollView {
                LazyVGrid(columns: layout, content: {
                    
                    ForEach(cleaningTasks) { item in
                        ButtonTask2(cleaningTask: item)
                    }
            .navigationTitle("Tâches ménagères")
        
        .padding()
//        .accessibilityLabel("Label")
    }
                          )
}
        }
        }
        Button("Valider") {
                // activate theme!
        }
    }}

struct CleaningView_Previews: PreviewProvider {
    static var previews: some View {
        CleaningView()
            .previewLayout(.sizeThatFits)
    }
}

struct ButtonTask2: View {
    @ObservedObject var cleaningTask : CleaningTask
    var body: some View {
        Button( action:{
            cleaningTask.isSwitch2.toggle()
            selectedCleaningTasks.append(cleaningTask)
        }, label: {
            ZStack{
                Image(cleaningTask.image)
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
                    .opacity(cleaningTask.isSwitch2 ? 1 : 0)
                
                
                Spacer()
            }  // VSack
        }  // label
        )
    }
}
