//
//  ContentView.swift
//  Weather-App
//
//  Created by Emre Yilmaz on 2024-02-22.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
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
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
                LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack (spacing: 8) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
