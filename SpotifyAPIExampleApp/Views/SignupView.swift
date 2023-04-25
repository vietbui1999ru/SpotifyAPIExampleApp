//
//  SignupView.swift
//  Rhythmiq
//
//  Created by Abdelilah Chaib on 3/16/23.
//
import SwiftUI


struct SignupView: View {
    @EnvironmentObject var spotify: Spotify
    @State private var showSignUpView = false
    @State private var usernameInput = ""
    @State private var passwordInput = ""
    @State private var passwordVerifyInput = ""
    @State private var verifyInput = ""
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                VStack {
                    //logo
                    VStack{
                        Image("logo").resizable().scaledToFill().frame(width: 120,height: 120)
                        // Spacer().frame(height: 20)
                        //Rhythmiq
                        Text("Rhythmiq").font(.custom("Montserrat Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    
                    
                    
                    Spacer().frame(height: 50)
                    
                    Group {
                        Text("Username:")
                            .foregroundColor(.white)
                            .font(.custom("Montserrat Regular", size: 15)).offset(y: 20)
                        
                        TextField("", text: $usernameInput).foregroundColor(.white)
                        
                            .font(.system(size: 20))
                            .padding(.horizontal, 50)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 12)
                            .background(
                                //Rectangle 4207
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.5921568870544434, green: 0.5921568870544434, blue: 0.5921568870544434, alpha: 1)))
                                    .frame(width: 325, height: 1).offset(y:15)
                            ).foregroundColor(.white)
                        
                        Text("Password:")
                            .foregroundColor(.white)
                            .font(.custom("Montserrat Regular", size: 15)).offset(y: 20)
                        
                        SecureField("", text: $passwordInput).foregroundColor(.white)
                        
                            .font(.system(size: 20))
                            .padding(.horizontal, 50)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 12)
                            .background(
                                //Rectangle 4207
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.5921568870544434, green: 0.5921568870544434, blue: 0.5921568870544434, alpha: 1)))
                                    .frame(width: 325, height: 1).offset(y:15)
                            )
                        
                            .foregroundColor(.white)
                        
                        Text("Verify Password:")
                            .foregroundColor(.white)
                            .font(.custom("Montserrat Regular", size: 15)).offset(y: 20)
                        
                        SecureField("", text: $passwordVerifyInput)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal, 50)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 12)
                            .background(
                                //Rectangle 4207
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.5921568870544434, green: 0.5921568870544434, blue: 0.5921568870544434, alpha: 1)))
                                    .frame(width: 325, height: 1).offset(y:15)
                            ).foregroundColor(.white)
                    }
                    
                    Spacer().frame(height: 50)
                    
                    
                    Button(action: {
                        // handle sign up action
                        self.showSignUpView = true
                    }, label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .font(.custom("Montserrat Regular", size: 15))
                            .bold()
                            .frame(width: 162, height: 51)
                            .background(Color(#colorLiteral(red: 0.11764705926179886, green: 0.843137264251709, blue: 0.3764705955982208, alpha: 1)))
                            .cornerRadius(10)
                        
                    })
                    NavigationLink(destination: OptionsView(), isActive: $showSignUpView) {
                        EmptyView()
                    }
                    
                    
                    
                    
                    Spacer().frame(height: 40)
                    HStack {
                        
                        Spacer()
                        Button(action: {
                            // handle Facebook sign in
                        }, label: {
                            Image("Facebook")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                        })
                        
                        Spacer().frame(width: 50)
                        
                        
                        Button(action: {
                            // handle Apple sign in
                        }, label: {
                            Image("Apple")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            
                        })
                        Spacer().frame(width: 50)
                        
                        
                        Button(action: {
                            // handle Gmail sign in
                        }, label: {
                            Image("Gmail")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        })
                        Spacer().frame(width: 100)
                    }
                    
                }
            }.ignoresSafeArea(.all)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
