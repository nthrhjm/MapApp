//
//  ContentView.swift
//  MapApp
//
//  Created by nhajime on 2020/07/05.
//  Copyright © 2020 nhajime. All rights reserved.
//

import MapKit
import SwiftUI

//viewプロトコルに適合していないMapKitに含まれるUI部品をSwiftUIに渡すための処理
struct MapView: UIViewRepresentable {
func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        MapView() //上で宣言した構造体を使ってUIを組んでいく
            .edgesIgnoringSafeArea((/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
