//
//  ContentView.swift
//  SwiftUI-Lottie-Animation
//
//  Created by Caner Çağrı on 8.07.2023.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
  
            Text("Caner Cagri")
            
            LottieView(lottieFile: "animation")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct LottieView: UIViewRepresentable {
    let lottieFile: String
 
    var animationView = LottieAnimationView()
 
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
 
        animationView.animation = LottieAnimation.named(lottieFile)
        animationView.contentMode = .scaleAspectFit
        animationView.play()
 
        view.addSubview(animationView)
 
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
 
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
 
    }
}
