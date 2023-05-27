//
//  InsectFactView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/22/22.
//

import SwiftUI

struct InsectFactView: View {
    // MARK: Properties
    
    let animal: Animal
    
    // MARK: Body
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                } //: Loop
            } //: Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: Box
    }
}

struct InsectFactView_Previews: PreviewProvider {
    
    static let aniamls: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsectFactView(animal: aniamls[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
