//
//  ItemRow.swift
//  Trackizer
//
//  Created by CodeForAny on 16/07/23.
//

import SwiftUI

struct ItemRow: View {
    @State var title: String = "Title"
    @State var value: String = "Value"
    
    var body: some View {
        HStack{
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
        .padding(.vertical, 15)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow()
            .background(Color.gray60.opacity(0.2))
    }
}
