//
//  LoginView.swift
//  InnovationApp
//
//  Created by Mohsen on 03/12/2024.
//

import SwiftUI
import UIComponents

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                Image("ICELogo")
                Text("Login")
                    .font(.poppins(.bold, size: 22))
                
                VStack(spacing: 24){
                    
                    
                    TextField("Enter your email", text: $email)
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay(
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.grayECECEC, lineWidth: 1)
                                
                                Text("Email")
                                    .padding(.horizontal,5)
                                    .font(.poppins(.regular, size: 12))
                                    .foregroundStyle(Color.gray757575)
                                    .background(.white)
                                    .offset(x: -UIScreen.main.bounds.width / 2 + 65,y: -22)
                                    .zIndex(99)
                            }
                        )
                    
                    
                    SecureField("Password", text: $password)
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay(
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.grayECECEC, lineWidth: 1)
                                
                                Text("Password")
                                    .padding(.horizontal,5)
                                    .font(.poppins(.regular, size: 12))
                                    .foregroundStyle(Color.gray757575)
                                    .background(.white)
                                    .offset(x: -UIScreen.main.bounds.width / 2 + 75,y: -22)
                                    .zIndex(99)
                            }
                        )
                }.padding(.top, 10)
                
                HStack{
                    Image("checkbox")
                    Text("Remember me")
                        .font(.poppinsRegular13)
                        .foregroundStyle(Constants.Gray707070)
                    Spacer()
                    Text("Forgot Password?")
                        .font(.poppinsRegular13)
                        .foregroundStyle(.blue)
                }
                VStack{
                    
                    NavigationLink(destination: ContentView()){
                        Text("Login")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.blue0073E6)
                            .foregroundColor(Constants.WhiteFFF)
                            .font(.poppins(.medium, size: 16))
                            .cornerRadius(8)
                    }
                }
                
                
                VStack(spacing: 10){
                    Text("Don't have an account")
                        .font(.poppinsMedium14)
                        .foregroundStyle(Constants.BlackMain19191A)
                    Text("Please go to our website on desktop devices to create an account")
                        .multilineTextAlignment(.center)
                        .font(.poppinsRegular13)
                        .foregroundStyle(Constants.Gray707070)
                }.padding(.top, 12)
                
                
                Spacer()
            }.padding(.horizontal, 25)
                .padding(.top, 130)
        }
    }
}


#Preview {
    LoginView()
}
