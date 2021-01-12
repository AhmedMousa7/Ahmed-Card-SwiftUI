//
//  ContentView.swift
//  AhmedCard
//
//  Created by Ahmed Mousa on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("amousa")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                Text("Ahmed Mousa")
                    .font(.custom("Cookie-Regular", size: 48))
                    .foregroundColor(.white)
                Text("Mobile Engineer")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "ahmed7mousa@gmail.com", imageName: "envelope.fill")
                    .padding(10)
                InfoView(text: "+201067794799", imageName: "phone.fill")
                    .padding(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
