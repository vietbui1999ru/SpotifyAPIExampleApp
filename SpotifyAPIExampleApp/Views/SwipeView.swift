////
////  SwipeView.swift
////  Rhythmiq
////
////  Created by Paul Addai on 3/2/23.
////
//
//import SwiftUI
//import SpotifyWebAPI
//import Combine
//
//struct SwipeView: View {
//    @State var doNothing: Bool = true
//    @State private var opacity = 0.0
//  //  @State private var condition = true
//    let colors = [Color.red, Color.green, Color.blue, Color.orange, Color.yellow]
//    let imageids = ["coverpic", "cover2","cover3", "cover4", "cover5"]
//
//
//    var body: some View {
//        ZStack{
//            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
//            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.08627450466156006, green: 0.6105880737304688, blue: 0.8352941274642944, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).blur(radius: 150).offset(x: -200,y: -800).opacity(opacity)
//                .animation(.linear(duration: 3).repeatForever())
//                .onAppear {
//                    withAnimation {
//                        opacity = 1
//                    }
//                }
//            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0117647061124444, green: 0.12156862765550613, blue: 0.054901961237192154, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).blur(radius: 90).offset(x: 200,y: 800)
//            
//            VStack{
//                Spacer().frame(height: 70)
//                HStack{
//                    Spacer().frame(width: 50)
//                    
//                    Button {
//                        self.doNothing = false
//                        
//                    } label: {
//                        Image(systemName: "chevron.backward").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1 , blue: 1, alpha: 1)))
//                    }
//                    
//                    Spacer()
//                    Image("logo").resizable().scaledToFit().frame(width: 35,height: 35)
//                    Spacer()
//                    
//                    Button {
//                        self.doNothing = false
//                    } label: {
//                        Image(systemName: "person.fill").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1 , blue: 1, alpha: 1)))
//                        Spacer().frame(width: 50)
//                    }
//                    
//                }
//                Spacer()
//                                
//                ZStack{
//                    Rectangle()
//                        .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.1568627506494522, blue: 0.1568627506494522, alpha: 0.699999988079071)))
//                    .frame(width: UIScreen.main.bounds.size.width, height: 90)
//                    
//                    HStack{
//                        Spacer().frame(width: 30)
//                        
//                        Button {
//                            self.doNothing = false
//                        } label: {
//                            Image(systemName: "text.justify").font(.system(size: 30,weight: .regular)).foregroundColor(Color(#colorLiteral(red: 1, green: 1 , blue: 1, alpha: 1)))
//                        }
//                        Spacer()
//                        
//                        Button {
//                            self.doNothing = false
//                        } label: {
//                            Image(systemName: "music.note").font(.system(size: 48,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.4588235318660736, green: 0.9764705896377563, blue: 0.2980392277240753, alpha: 1)))
//                        }
//                        Spacer()
//                        
//                        Button {
//                            self.doNothing = false
//                        } label: {
//                            Image(systemName: "heart").font(.system(size: 30,weight: .regular)).foregroundColor(Color(#colorLiteral(red: 1, green: 1 , blue: 1, alpha: 1)))
//                            Spacer().frame(width: 30)
//                        }
//
//                    }
//                    
//                }
//                
//            }
//            VStack{
//                ZStack {
//                    ForEach(0..<colors.count) { index in
//                        Card(imageId: imageids[index])
//                            .offset(x: -CGFloat(index) * 5 - CGFloat(colors.count) * 5,y: CGFloat(index) * 5 )
//                            .gesture(TapGesture(count: 2).onEnded {
//                                print("double clicked on \(imageids[index])")
//                            })
//                        
//                    }
//                }
//                .padding().offset(x:40,y: -40)
//            }.frame(width: 350, height: 450)
//            
//            HStack{
//                Rectangle()
//                    .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
//                .frame(width: 247, height: 6).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:20, x:4, y:4)
//            }.offset(y: 250)
//        }.ignoresSafeArea(.all)
//    }
//}
//
//struct SwipeView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwipeView()
//    }
//}
