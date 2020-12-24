//
//  CircleImage.swift
//  Landmarks
//
//  Created by 허예은 on 2020/12/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").resizable().frame(width: 200.0,height:200.0).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius:7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
