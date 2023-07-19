//
//  IconItemRow.swift
//  Trackizer
//
//  Created by CodeForAny on 16/07/23.
//

import SwiftUI

struct IconItemRow: View {
    @State var icon: String = "face_id"
    @State var title: String = "Title"
    @State var value: String = "Value"
    
    var body: some View {
        HStack{
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
            Text(title)
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
            
            Spacer()
            
            
            Text(value)
                .font(.customfont(.medium, fontSize: 14))
                .foregroundColor(.gray30)
            
            Image("next")
                .resizable()
                .frame(width: 12, height: 12)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
    }
}

struct IconItemRow_Previews: PreviewProvider {
    static var previews: some View {
        IconItemRow()
            .background(Color.gray60.opacity(0.2))
    }
}
