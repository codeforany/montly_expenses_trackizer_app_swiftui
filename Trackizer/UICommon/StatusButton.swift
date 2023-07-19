//
//  StatusButton.swift
//  Trackizer
//
//  Created by CodeForAny on 13/07/23.
//

import SwiftUI

struct StatusButton: View {
    @State var title: String = "Title"
    @State var value: String = "10"
    @State var color: Color = .secondaryC
    var onPressed: (()->())?
    var body: some View {
        
        Button {
            onPressed?()
        } label: {
            ZStack(alignment: .top){
                VStack{
                    VStack{
                        Text(title)
                            .font(.customfont(.semibold, fontSize: 12))
                            .foregroundColor(.gray40)
                        
                        Text(value)
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.white)
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 68, maxHeight: 68)
                
                .background(Color.gray60.opacity(  0.2 ))
                .overlay {
                    RoundedRectangle(cornerRadius:  16)
                        .stroke( Color.gray30.opacity(0.5), lineWidth: 1)
                }
                .cornerRadius(16)
                
                Rectangle()
                    .fill(color)
                    .frame(width: 60, height: 1, alignment: .center)
            }
        }

        
    }
}

struct StatusButton_Previews: PreviewProvider {
    static var previews: some View {
        StatusButton()
    }
}
