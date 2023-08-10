//
//  BeginBrowsingView.swift
//  SoleStyle
//
//  Created by Samya Chauhan on 3/1/23.
//

import SwiftUI

struct BeginBrowsingView: View {
    @State var timeRemaining = 3
    let secondsToDelay = 2.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(){
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.lightBlue)
                    .opacity(0.35)
                    .frame(width: 300, height: 50)
                Text("What's Being Worn?")
                    .font(.system(size:25))
                    .foregroundColor(Color.black)
                    .bold()
            }
           /* HStack{
                Circle()
                    .fill(Color.green)
                    .frame(width: 10, height:10)
                Text("In Closet")
                    .font(.system(size:10))
            }
            HStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width: 10, height:10)
                Text("Something Similar In Closet")
                    .font(.system(size:10))
            }
            HStack{
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 10, height:10)
                Text("Purchasable (Click for Availability)")
                    .font(.system(size:10))
            }
            Spacer(minLength: 10)*/
            
            HStack(alignment: .center){
                ScrollView(.vertical) {
                    Image("business0")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 375, height: 500)
                        .background(Color.lightGrey)
                        .cornerRadius(25)
                    Image("business1")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 375, height: 500)
                        .background(Color.lightGrey)
                        .cornerRadius(25)
                    Image("business2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 375, height: 500)
                        .background(Color.lightGrey)
                        .cornerRadius(25)
                    Image("business3")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 375, height: 500)
                        .background(Color.lightGrey)
                        .cornerRadius(25)
                }.frame(width: 400, height: 580, alignment: .top)
            }
            
            
                
            Button {
                print("Added!")
            }
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGrey)
                        .opacity(0.35)
                        .frame(width: 400, height: 75)
                    Text("Add Outfit to Wishlist")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color.lightBlue)
                }
            }
        }
    }
}

struct BeginBrowsingView_Previews: PreviewProvider {
    static var previews: some View {
        BeginBrowsingView()
    }
}
