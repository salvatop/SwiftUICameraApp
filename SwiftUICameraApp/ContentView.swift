//
//  ContentView.swift
//  SwiftUICameraApp
//
//  Created by Salvatore Palazzo  on 2023-09-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    
                    Text("Camera")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
