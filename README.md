# Image Selector App

This is a small iOS app written in Swift and SwiftUI that allows users to select an image from their device's file system using the UIImagePickerController. It leverages `UIViewControllerRepresentable` and the Coordinator pattern to seamlessly integrate UIKit components into a SwiftUI app.

## Features

- Select an image from the device's file system.
- Seamless integration of UIImagePickerController with SwiftUI.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Xcode installed on your macOS device.
- Basic knowledge of Swift and SwiftUI.

## Getting Started

Follow these steps to get the project up and running:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/image-selector-app.git

2. Open the project in Xcode.

3. Build and run the app on your iOS simulator or device.

## How it Works
The app uses the UIImagePickerController to allow the user to pick an image from their device. It employs the UIViewControllerRepresentable protocol to wrap the UIKit component in a SwiftUI view. This is achieved with the help of the Coordinator pattern, which bridges the communication between SwiftUI and UIKit.

The main components are:

`ImagePicker`: A SwiftUI view that presents the UIImagePickerController.
`ImagePickerCoordinator`: The coordinator responsible for managing the UIImagePickerController and handling delegate methods.

## Usage
• Launch the app on your iOS device or simulator.
• Tap the "Select Image" button.
• The UIImagePickerController will be presented, allowing you to select an image from your device's file system.
Once you've chosen an image, it will be displayed in the app.

## Dependencies
This app does not rely on any external dependencies beyond the Swift standard library and UIKit.
