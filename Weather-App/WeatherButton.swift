//
//  WeatherButton.swift
//  Weather-App
//
//  Created by Emre Yilmaz on 2024-02-22.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .clipShape(.buttonBorder)
    }
}
