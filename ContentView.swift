//
//  ContentView.swift
//  SoleStyle
//  Samya Chauhan
//

import SwiftUI
extension Color {
    static let lightBlue = Color(red: 63 / 255, green: 167 / 255, blue: 214 / 255)
    static let lightGrey = Color(red: 232 / 255, green: 229 / 255, blue: 229 / 255)
    static let lightGreen = Color(red: 3 / 255, green: 150 / 255, blue: 158 / 255)
}

struct ContentView: View {
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var username: String = "samya-chauhan"
    @State private var password: String = "solestyle"

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    VStack(alignment: .trailing){
                        Image("topOfLoginScreen")
                            .resizable()
                            .frame(width:400, height:400)
                            .position(x:350)
                    }
                    VStack{
                        Text("Login")
                            .font(.system(size: 45, weight: .heavy))
                            .bold()
                            .frame(width: 350, height: 50, alignment: .leading)
                        Text("Please Sign In To Continue")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundColor(.gray)
                            .frame(width: 350, alignment: .leading)
                    }.padding(30)
                    VStack{
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .padding(20)
                            TextField(" ", text: $text1)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .foregroundColor(.gray)
                                .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.lightBlue))
                                .padding(-20)
                        }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                    }.padding(10)
                    VStack{
                        HStack{
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .padding(20)
                            SecureField(" ", text: $text2)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .foregroundColor(.gray)
                                .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.lightBlue))
                                .padding(-20)
                        }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                    }.padding(10)
                    
                    VStack{
                        NavigationLink(destination: WelcomeView())
                        {
                            Image(systemName: "bolt.fill")
                            Text("LOGIN")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundColor(Color.white)
                        }.padding(10.0).background(Color.lightBlue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }.frame(maxHeight: .infinity, alignment: .bottom)
                    
            
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
