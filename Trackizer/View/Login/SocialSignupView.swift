//
//  SocialSignupView.swift
//  Trackizer
//
//  Created by CodeForAny on 11/07/23.
//

import SwiftUI

struct SocialSignupView: View {
    @State var showSignUp: Bool = false
    
    var body: some View {
        ZStack{
            
            
            VStack{
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5) )
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack{
                        Image("apple_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack{
                            
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Apple")
                                .font(.customfont(.semibold, fontSize: 14))
                            
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 15)
                
                Button {
                    
                } label: {
                    ZStack{
                        Image("google_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack{
                            
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Google")
                                .font(.customfont(.semibold, fontSize: 14))
                            
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.grayC)
                .shadow(color: .white.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 15)
                
                Button {
                    
                } label: {
                    ZStack{
                        Image("fb_btn")
                            .resizable()
                            .scaledToFill()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack{
                            
                            Image("fb")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Facebook")
                                .font(.customfont(.semibold, fontSize: 14))
                            
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.white)
                .shadow(color: .blue.opacity(0.3), radius: 5, y: 3)
                .padding(.bottom, 25)
                
                Text("or")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 25)
                
                
                
                SecondaryButton(title: "Sign up with E-mail", onPressed: {
                    showSignUp.toggle()
                })
                .background( NavigationLink(destination: SignUpView(), isActive: $showSignUp, label: {
                    EmptyView()
                }) )
                .padding(.bottom, 20)
                
                Text("By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray60)
                    .padding(.bottom, .bottomInsets + 8)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .background(Color.grayC)
    }
}

struct SocialSignupView_Previews: PreviewProvider {
    static var previews: some View {
        SocialSignupView()
    }
}
