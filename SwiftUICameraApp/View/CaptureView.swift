//
//  CaptureView.swift
//  SwiftUICamera
//
//  Created by Salvatore Palazzo on 2023-09-22.
//

import Foundation
import SwiftUI

struct CaptureView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController

    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var isUsingCamera: Bool

    init(isShown: Binding<Bool>,
         image: Binding<Image?>,
         isUsingCamera: Binding<Bool>) {
        _isShown = isShown
        _image = image
        _isUsingCamera = isUsingCamera
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {

        let picker = UIImagePickerController()
        picker.sourceType = isUsingCamera ? .camera : .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // do nothing
    }
}
