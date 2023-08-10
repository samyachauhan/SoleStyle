//
//  BeginVirtualRenderingView.swift
//  SoleStyle
//
//  Created by Samya Chauhan on 2/28/23.
//

import SwiftUI

struct BeginVirtualRenderingView: View {
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .fill(Color.green)
                    .frame(width: 15, height:15)
                Text("In Closet")
            }
            HStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width: 15, height:15)
                Text("Something Similar In Closet")
            }
            HStack{
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 15, height:15)
                Text("Purchasable (Click for Availability)")
            }
            Spacer(minLength: -25)
            ZStack{
                Image("body")
                    .resizable()
                    .frame(width: 240, height: 500)
                Circle()
                    .fill(Color.blue)
                    .frame(width: 10, height:10)
                    .position(x:150, y:530)
                Circle()
                    .fill(Color.green)
                    .frame(width:10, height:10)
                    .position(x:175, y:275)
                Circle()
                    .fill(Color.green)
                    .frame(width:10, height:10)
                    .position(x:175, y:200)
            }
            NavigationLink(destination: VirtualRenderingView())
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightBlue)
                        .opacity(0.35)
                        .frame(width: 300, height: 75)
                    Text("Next Rendering")
                        .font(.system(size:25))
                        .foregroundColor(Color.black)
                        .bold()
                }
            }
        }
    }
}

struct BeginVirtualRenderingView_Previews: PreviewProvider {
    static var previews: some View {
        BeginVirtualRenderingView()
    }
}
