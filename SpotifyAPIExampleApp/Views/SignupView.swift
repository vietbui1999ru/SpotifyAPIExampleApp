//
//  SignupView.swift
//  Rhythmiq
//
//  Created by Abdelilah Chaib on 3/16/23.
//

import SwiftUI

struct SignupView: View {
    @State private var usernameInput = ""
    @State private var passwordInput = ""
    @State private var verifyInput = ""
    var body: some View {
        
        ZStack {
            Color.black
            Text("Rhythmiq").font(.custom("Montserrat Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .offset(x: 0, y: -130)

            Text("Username:")
                .foregroundColor(.white)
                .font(.custom("Montserrat Regular", size: 15))
                .offset(x: 0, y: -40)
            
            TextField("Enter Username", text: $usernameInput).foregroundColor(.white)
            
                .font(.system(size: 20))
                .padding(.horizontal, 50)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(lineWidth: 2)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                )
            
                .foregroundColor(.white)
            
            
            Text("Password:")
                .foregroundColor(.white)
                .font(.custom("Montserrat Regular", size: 15))
                .offset(x: 0, y: 40)
            TextField("Enter Password", text: $passwordInput)
                .font(.system(size: 20))
                .padding(.horizontal, 50)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(lineWidth: 2)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                )
                .foregroundColor(.white)
                .offset(x: 0 , y: 80)
            
            Text("Verify Password:")
                .foregroundColor(.white)
                .font(.custom("Montserrat Regular", size: 15))
                .offset(x: 0, y: 120)
            TextField("Retype Password", text: $verifyInput)
                .font(.system(size: 20))
                .padding(.horizontal, 50)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(lineWidth: 2)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                )
                .foregroundColor(.white)
                .offset(x: 0 , y: 160)
            
            
            Button(action: {
                // handle sign up action
            }, label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .font(.custom("Montserrat Regular", size: 15))
                    .bold()
                    .frame(width: 162, height: 51)
                    .background(Color(#colorLiteral(red: 0.11764705926179886, green: 0.843137264251709, blue: 0.3764705955982208, alpha: 1)))
                    .cornerRadius(10)
                    .padding(.top, 500)
            })
        
            VStack {
                
                Image("logo").resizable().scaledToFit().frame(width: 141,height: 159)
                    .offset(x: 0, y: -150)
                
                Button(action: {
                    // handle Facebook sign in
                }, label: {
                    Image("Facebook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                })
                .frame(maxWidth: .infinity)
                .offset(x: -70, y: 330)
                
                Button(action: {
                    // handle Apple sign in
                }, label: {
                    Image("Apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        
                })
                .frame(maxWidth: .infinity)
                .offset(x: 70, y: 270)
                
                Button(action: {
                    // handle Gmail sign in
                }, label: {
                    Image("Gmail")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                })
                .frame(maxWidth: .infinity)
                .offset(x: 0, y: 215)
                
                
                
            
            }
            
            

            
            
            
        
        }.ignoresSafeArea(.all)
        }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
