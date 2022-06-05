//
//  ContentView.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import SwiftUI
import Combine

struct ContentView: View {
    var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Button("온도 업데이트") {
                viewModel.updatingWeatherData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
