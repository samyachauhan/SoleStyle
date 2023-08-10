//
//  AboutYouView.swift
//  SoleStyle
//
//

import SwiftUI

struct AboutYouView: View {
    var body: some View {
        ZStack{
            ZStack(){
                VStack{
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 125, height: 140)
                            .position(x:110, y:80)
                        Text("Samya Chauhan")
                            .font(.system(size: 45))
                            .bold()
                            .position(x:70, y: 80)
                            .foregroundColor(.black)
                    }
                    VStack(alignment:.center){
                        Text("Age: 17")
                            .font(.system(size: 30))
                            .bold()
                            .foregroundColor(.black)
                        Spacer(minLength: 75)
                        Text("Height: 5'5")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                        Spacer(minLength: 75)
                        Text("Weight: 120 lbs")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                        Spacer(minLength: 75)
                        Text("Waist: 24 in")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                        Spacer(minLength: 75)
                        Text("Casual Wear, Business Professional")
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                            .bold()
                        Spacer(minLength: 100)
                    }
                        
                }
            }
        }
    }
}

struct AboutYouView_Previews: PreviewProvider {
    static var previews: some View {
        AboutYouView()
    }
}
