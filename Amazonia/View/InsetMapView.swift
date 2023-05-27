//
//  InsetMapView.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/22/22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: Properties
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  -15.7801, longitude:  -47.9292), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)) //zoom out
    
    // MARK: Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } //Navigation
                    .padding(12)
                ,alignment: .topTrailing
            ) //navigation
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: View
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
