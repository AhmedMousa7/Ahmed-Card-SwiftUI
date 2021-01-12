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
                Text(K.name)
                    .font(.custom("Cookie-Regular", size: 48))
                    .foregroundColor(.white)
                Text(K.title)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: K.email, imageName: "envelope.fill")
                    .padding(10)
                    .onTapGesture {
                        openMailApp(email: K.email)
                    }
                InfoView(text: K.mobile, imageName: "phone.fill")
                    .padding(10)
                    .onTapGesture {
                        openDialApp(number: K.mobile)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private func openMailApp(email: String) {
    if let url = URL(string: "mailto:\(email)") {
        UIApplication.shared.open(url)
    }
}

private func openDialApp(number: String)  {
    if let url = URL(string: "tel://" + number) {
        UIApplication.shared.open(url)
    }
}
