//
//  ContentView.swift
//  Landmarks
//
//  Created by 허예은 on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Hello, SwiftUI!")
                .font(.title).foregroundColor(.green)
            HStack {
                Text("Joshua Tree National Park").font(.subheadline).foregroundColor(.gray)
                Spacer()
                Text("California").font(.subheadline)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
