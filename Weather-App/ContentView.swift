//
//  ContentView.swift
//  Weather-App
//
//  Created by Emre Yilmaz on 2024-02-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack (spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 9){
                    WeatherDayView(dayOfWeek: "MON",
                                   imagename: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imagename: "sun.max.fill",
                                   temperature: 89)
                    WeatherDayView(dayOfWeek: "WED",
                                   imagename: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "THU",
                                   imagename: "wind.snow",
                                   temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imagename: "cloud.heavyrain.fill",
                                   temperature: 45)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imagename: "cloud.bolt.fill",
                                   temperature: 60)
                    WeatherDayView(dayOfWeek: "SUN",
                                   imagename: "sun.max.fill",
                                   temperature: 90)
                }
                Spacer()
                
                Button {
                    print("heyy")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .clipShape(.buttonBorder)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imagename: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8){
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
