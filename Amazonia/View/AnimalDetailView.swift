//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/21/22.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                
                // HeadLine
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Veja os selvagens")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Você sabia?")
                } //Group
                .padding(.horizontal)
                
                InsectFactView(animal: animal)

                // Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "Sobre \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                } //Group
                
                // Map
                Group{
                    HeadingView(headingImage: "map", headingText: "Localização")
                    
                    InsetMapView()
                }//Group
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Saiba mais")
                }
                
                ExternalWeblinkView(animal: animal)
                .padding(.horizontal)
                
            } //:Vstack
            .navigationBarTitle("Saiba mais \(animal.name)",  displayMode: . inline)
        } //: Scroll
    }
}

// MARK: PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView { //adiciona a view
            AnimalDetailView(animal: animals[0])
        }
    }
}
