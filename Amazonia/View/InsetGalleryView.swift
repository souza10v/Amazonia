//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/21/22.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    // MARK: BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //Loop
            } //HStack
        } //: ScrollView
    }//View
}

    // MARK: VIEW
struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
