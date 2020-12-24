//
//  ContentView.swift
//  Landmarks
//
//  Created by 허예은 on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView().ignoresSafeArea().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom,-130)
            VStack(alignment: .leading){
                Text("Hello, SwiftUI!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline).foregroundColor(.gray)
                    Spacer()
                    Text("California").font(.subheadline)
                }.font(.subheadline).foregroundColor(.secondary)
                Divider()
                Text("About Turtle Lock").font(.title2)
                Text("Descriptive text goes here")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
