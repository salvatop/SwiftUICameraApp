//
//  CameraView.swift
//  SwiftUICameraApp
//
//  Created by Salvatore Palazzo on 2023-09-22.
//

import SwiftUI

struct CameraView: View {

    @State var isShowingPicker = false
    @State var isUsingCamera = false
    @State var image: Image? = nil

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)

                    Button(action: {
                        self.isUsingCamera = false
                        self.isShowingPicker.toggle()
                    }, label: {
                        Text("Photo Library")
                    })
                    .padding()

                    Button(action: {
                        self.isUsingCamera = true
                        self.isShowingPicker.toggle()
                    }, label: {
                        Text("Take Photo")
                    })
                    .padding()
                }

                if (isShowingPicker) {
                    CaptureView(isShown: $isShowingPicker,
                                image: $image,
                                isUsingCamera: $isUsingCamera)
                }

            }
            .navigationTitle("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
            .preferredColorScheme(.dark)
    }
}
