//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/22/22.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: Properties
    
    let animal: Animal
    
    // MARK: Body
    
    var body: some View {
        Group {
            HStack {
                Image( systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            } //HStack
        } //Box
    }
}

// MARK: View

struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
