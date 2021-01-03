//
//  ContentView.swift
//  Chart
//
//  Created by 허예은 on 2021/01/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LineCharts()
    }
}

struct LineCharts:View {
    @State var showTotal = false
    var body: some View {
        VStack{
            HStack{
                Toggle(" ", isOn: $showTotal).toggleStyle(SwitchToggleStyle(tint: Color.blue))
                
                Button(action: {print("Move to Detail")}, label: {
                    Image(systemName: "plus").font(.title)
                })
                	
            }.padding()
            
            
            if showTotal {
                VStack{
                    LineChartView(data: [53.8,54.7,52.1,55.5,54.3,53.2,52.1,53.8,54.7,52.1,55.5,54.3,53.2,52.1], title: "몸무게 (kg)", form: ChartForm.custom)
                }.padding(.bottom, 25)
                
                VStack{
                    LineChartView(data: [8,23,24,12,22,17,27,23,23,8,23,24,12,22,17,27,23,23], title: "기초대사량", form: ChartForm.custom)
                }.padding(.bottom, 25)
                
                VStack{
                    LineChartView(data: [16.2,12.5,13.5,17.2,12.5,11.3,12.2,16.2,12.5,13.5,17.2,12.5,11.3,12.2], title: "BMI", form: ChartForm.custom)
                }.padding(.bottom, 25)
            } else {
                VStack{
                    LineChartView(data: [53.8,54.7,52.1,55.5,54.3,53.2,52.1], title: "몸무게 (kg)", form: ChartForm.custom)
                }.padding(.bottom, 25)
                
                VStack{
                    LineChartView(data: [8,23,24,12,22,17,27,23,23], title: "기초대사량", form: ChartForm.custom)
                }.padding(.bottom, 25)
                
                VStack{
                    LineChartView(data: [16.2,12.5,13.5,17.2,12.5,11.3,12.2], title: "BMI", form: ChartForm.custom)
                }.padding(.bottom, 25)
            }
        }
    }
}
