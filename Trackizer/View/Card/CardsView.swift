//
//  CardsView.swift
//  Trackizer
//
//  Created by CodeForAny on 18/07/23.
//

import SwiftUI

struct CardsView: View {
    
    @State var cardArr: [CreditCardModel] = [
        CreditCardModel(name: "Code for any 1", number: "**** **** **** 2789", month_year: "08/27"),
        CreditCardModel(name: "Code for any 2", number: "**** **** **** 2788", month_year: "07/27"),
        CreditCardModel(name: "Code for any 3", number: "**** **** **** 2754", month_year: "01/27"),
        CreditCardModel(name: "Code for any 4", number: "**** **** **** 2720", month_year: "03/28"),
        CreditCardModel(name: "Code for any 5", number: "**** **** **** 2730", month_year: "08/28"),
        ]
    
    @State var subArr: [SubscriptionModel] = [
        SubscriptionModel(dict: ["name":"Spotify", "icon":"spotify_logo", "price": "5.99"] )
        ,
        SubscriptionModel(dict: [
            "name": "YouTube Premium",
            "icon": "youtube_logo",
            "price": "18.99"] )
        ,
        SubscriptionModel(dict: ["name": "Microsoft OneDrive",
                                 "icon": "onedrive_logo",
                                 "price": "29.99"] )
        ,
        SubscriptionModel(dict: ["name": "NetFlix", "icon": "netflix_logo", "price": "15.00"] )
    ]
    
    var body: some View {
        ScrollView {
            
                        
            VStack{
                
                ZStack{
                    HStack{
                        Spacer()
                        Button {
                            
                        } label: {
                            Image("settings")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray30)
                        }
                    }
                    
                    HStack{
                        Spacer()
                        
                        Text("Credit Cards")
                            .font(.customfont(.regular, fontSize: 16))
                        
                        
                        Spacer()
                        
                    }
                }
                .foregroundColor(.gray30)
                .padding(.horizontal, 20)
                
                CardStack(cardArr) { cObj in
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.gray70)
                            .frame(width: 232, height: 350)
                            .shadow(color: .black.opacity(0.2), radius: 4)
                        
                        Image("card_blank")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 232, height: 350)
                        
                        VStack(spacing: 8){
                            Spacer()
                                .frame(height: 22)
                            
                            Image("mastercard_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("Virtual Card")
                                .font(.customfont(.semibold, fontSize: 16))
                            
                            Spacer()
                                .frame(height: 107)
                            
                            Text(cObj.name)
                                .font(.customfont(.semibold, fontSize: 12))
                                .foregroundColor(.gray20)
                            
                            
                            Text(cObj.number)
                                .font(.customfont(.semibold, fontSize: 16))
                            
                            
                            Text(cObj.month_year)
                                .font(.customfont(.semibold, fontSize: 14))
                            
                            
                            Spacer()
                            
                        }
                        .foregroundColor(.white)
                        
                    }
                }
                .padding(.vertical, 20)
                
                VStack{
                    Text("Subscriptions")
                        .font(.customfont(.semibold, fontSize: 16))
                    
                    HStack(spacing: 10){
                        
                        Spacer()
                        
                        ForEach(subArr) { sObj in
                            Image(sObj.icon)
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                        
                    }
                }
                .foregroundColor(.white)
                .padding(.top, 20)
                
                VStack{
                    Button {
                        
                    } label: {
                        HStack{
                            Text("Add new card ")
                                .font(.customfont(.semibold, fontSize: 14))
                            
                            Image("add")
                                .resizable()
                                .frame(width: 14, height: 14)
                        }
                        
                    }
                    .foregroundColor( .gray30 )
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 64, maxHeight: 64)
                    .overlay {
                        RoundedRectangle(cornerRadius:  16)
                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5,4]) )
                            .foregroundColor(.gray30.opacity(0.5))
                        
                        //.stroke(  Color.gray70,  lineWidth: 1)
                    }
                    .cornerRadius(16)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                    Spacer()
                }
                .frame(width: .infinity, height: 300 )
                .background(Color.gray70)
                .cornerRadius(radius: 24, corners: [.topLeft, .topRight])
                .padding(.top, 40)
                
            }
            .padding(.top, .topInsets)
        }
        
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
