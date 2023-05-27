//
//  ContentView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Properties
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // MARK: - Body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0 ))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //Link
                } //Loop
            } //: List
        } //Navigation
        .navigationBarTitle("Amazônia", displayMode: .large)
    } //: Navigation
}

// MARK: - View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
