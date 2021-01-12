//
//  InfoView.swift
//  AhmedCard
//
//  Created by Ahmed Mousa on 12/01/2021.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 45)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(
                            Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(text)
                        .foregroundColor(.black)
                }
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
