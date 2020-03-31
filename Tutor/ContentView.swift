//
//  ContentView.swift
//  Tutor
//
//  Created by Federico Reyes on 3/26/20.
//  Copyright © 2020 Federico Reyes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let cameraViewController = CameraViewController()
    
    var body: some View {
        VStack{
            self.cameraViewController
                .edgesIgnoringSafeArea(.top)
            Text("+")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .offset(y: -UIScreen.main.bounds.height/2)
            Button(action: {
                print("Button")
                print(self.cameraViewController.cameraController)
                self.cameraViewController.captureImage(self)
            }) {
               Image(systemName: "camera")
                .font(.largeTitle)
                .foregroundColor(.blue)
            }.offset(y: -50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
