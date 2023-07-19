//
//  SecondaryButton.swift
//  Trackizer
//
//  Created by CodeForAny on 11/07/23.
//

import SwiftUI

struct SecondaryButton: View {
    @State var title: String = "Title"
    var onPressed: (()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack{
                Image("secodry_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 20)
                    .frame(width: .infinity, height: 48)
                
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundColor(.white)
       
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton()
    }
}
