//
//  LoginView.swift
//  Rhythmiq
//
//  Created by Abdelilah Chaib on 3/17/23.
//  Modified by Viet Bui 3/24/23
// Modularized code to make the view less clunky and easier to read
// currently the view works fine, forgot to look at the logo imports from Abdel's original code, so it's missing the sign in options.
// Added red border warning when logging in with non-existent email
// added username and password authentication
// Right now haven't looked at how Navigation LInks work, but the boilerplate code to navigate is there

import SwiftUI

struct LoginSwipe: View {
    @State private var emailInput = ""
    @State private var passwordInput = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @available(iOS 15.0, *)
    var body: some View {
        
        NavigationView {
            ZStack {
                Constants.spotifyBlack.ignoresSafeArea()
                VStack {
                    Constants().Logo()
                    VStack {
                        Text("Login").font(.custom(Constants.App.fontName, size: CGFloat(Constants.Layout.fontSizeHeading)))
                            .bold()
                            .foregroundColor(Constants.textColor)
                            .padding()
                        TextField("Enter Email", text: $emailInput, prompt: Text("Enter Email")
                            .foregroundColor(.white)
                            .font(.custom(Constants.App.fontName, size: CGFloat(Constants.Layout.fontSizeHeading))))
                        .foregroundColor(.white).padding()
                        .autocapitalization(.none)
                            .frame(width: 300, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(lineWidth: 2)
                                    .foregroundColor(.white)
                                    .background(Color.black)
                            )
                            .border(.red, width: CGFloat(wrongEmail))
                        TextField("Enter Password", text: $passwordInput, prompt: Text("Enter Password")
                            .foregroundColor(.white)
                            .font(.custom(Constants.App.fontName, size: CGFloat(Constants.Layout.fontSizeHeading))))
                        .foregroundColor(.white).padding()
                        .autocapitalization(.none)
                            .frame(width: 300, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(lineWidth: 2)
                                    .foregroundColor(.white)
                                    .background(Color.black)
                            )
                            .padding()
                        Button("Login") {
                            // Authenticate user
                            authenticateUser(email: emailInput, password: passwordInput)
                        }
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                        
                        // will work on this later
                        NavigationLink(destination: Text("You are logged in @\(emailInput ?? "")"), label: {
                            EmptyView()
                        }
                        )
                    }
                }
                Spacer()
            }
            
            //Fields
            
        }
    }
    //The print statement is catching the incorrect output, upon inspection
    //email and emailInput are the same string,
    // but it's somehow not stepping into the if condition when it's true
    func authenticateUser(email: String, password: String) {
        if email.lowercased() == "vietbui19@agustana.edu" {
            print(emailInput, email)
            wrongEmail = 0
            if password.lowercased() == "test123!" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            print(emailInput.lowercased(), email)
            print(emailInput == email)
            wrongEmail = 2
        }
    }
}



struct LoginViewSwipe_Previews: PreviewProvider {
    static var previews: some View {
        LoginSwipe()
    }
}
