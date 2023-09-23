//
//  Coordinator.swift
//  SwiftUICamera
//
//  Created by little-ac on 2023-09-23.
//

import UIKit
import SwiftUI

final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @Binding var isShown: Bool
    @Binding var image: Image?

    init(isShown: Binding<Bool>,
         image: Binding<Image?>) {
        _isShown = isShown
        _image = image
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // user cancelled
        isShown = false
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        guard let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        image = Image(uiImage: uiimage)
        isShown = false
    }
}

