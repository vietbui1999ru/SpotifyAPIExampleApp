//
//  ForgotPasswordView.swift
//  Rhythmiq
//
//  Created by Viet Quoc Bui on 3/21/23.
//  Will  come back and fix layouts and make code more readable

import Foundation
import SwiftUI

struct ForgotPasswordView: View {
    @State private var confirmEmail = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                // Main View
                VStack {
                    Spacer()
                    // Logo
                    VStack {
                        Image("logo").resizable().scaledToFill().frame(width: 100,height: 100)
                        Spacer().frame(height: 20)
                        //Rhythmiq
                        Text("Rhythmiq").font(.custom("Montserrat Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    // Fields
                    VStack(spacing: 20){
                        Text("Reset Password ").font(.custom("Montserrat Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        TextField("Enter Password", text: $confirmEmail, prompt: Text("Enter Email").foregroundColor(Color.white))
                            .autocapitalization(.none)
                            .foregroundColor(Color.white)
                            .font(.custom("Montserrat Regular", size: 22))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .strokeBorder(lineWidth: 2)
                                    .foregroundColor(.white)
                                    .background(Color.black)
                            )
                    }
                    .padding(.horizontal, 30.0)
                    .padding(.vertical, 8.0)
                    
                    VStack(spacing: 20) {
                        Button {
                            print("go back to loginView")
                        } label: {
                            Text("Reset password").frame(maxWidth: .infinity).font(.title2)
                        }
                        .frame(width: 340)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green).cornerRadius(15)
                    }
                    .padding()
                    Spacer()
                }                // Buttons
            }.ignoresSafeArea(.all)
        }
    }
}
struct Previews_ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
