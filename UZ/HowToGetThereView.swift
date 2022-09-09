//
//  TransitInfoView.swift
//  UZ
//
//  Created by Filip Chmielewski on 09/09/2022.
//

import SwiftUI
import MapKit



struct HowToGetThereView: View {
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    Text("Addresses:")
                        .font(.title)
                    Spacer()
                }
                .padding(.bottom)
                HStack {
                    Text("Campus A")
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    Text( "Podgórna 50")
                    Spacer()
                    Button("Show in Maps") {
                        let mapItem = MKMapItem(placemark: .init(coordinate: CLLocationCoordinate2D(latitude: 51.93979, longitude: 15.52901)))
                        mapItem.name = "Uniwersytet Zielonogórski - Campus A"
                        mapItem.url = URL(string: "uz.zgora.pl")
                        mapItem.pointOfInterestCategory = .university

                        mapItem.openInMaps()
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding(.bottom)
                HStack {
                    Text("Campus B")
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    Text( "Wojska Polskiego 69")
                    Spacer()
                    Button("Show in Maps") {
                        let mapItem = MKMapItem(placemark: .init(coordinate: CLLocationCoordinate2D(latitude: 51.93944, longitude: 15.47308)))
                        mapItem.name = "Uniwersytet Zielonogórski - Campus B"
                        mapItem.phoneNumber = "+48 68 328 32 79"
                        mapItem.url = URL(string: "uz.zgora.pl")
                        mapItem.pointOfInterestCategory = .university

                        mapItem.openInMaps()
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding(.bottom)
                HStack {
                    Text("Other university properties")
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    Text( "Energetyków 2")
                    Spacer()
                    Button("Show in Maps") {
                        let mapItem = MKMapItem(placemark: .init(coordinate: CLLocationCoordinate2D(latitude: 51.95129, longitude: 15.49420)))
                        mapItem.name = "Energetyków 2"

                        mapItem.openInMaps()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
        .padding()
        .navigationTitle("Transit")
    }
}
struct HowToGetThereView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HowToGetThereView()
        }
    }
}
