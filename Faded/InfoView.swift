//
//  InfoView.swift
//  Faded
//
//  Created by Jason Mcelvain on 2/3/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.black)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName:imageName)
                    .foregroundColor(.white)
                Text(text).foregroundColor(.white)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Book With Me", imageName: "calendar.circle.fill")
            .previewLayout(.sizeThatFits)
    }
}
