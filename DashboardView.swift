//
//  DashboardView.swift
//  SoleStyle
//
//90x85//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack{
            HStack(){
                Image("profile")
                    .resizable()
                    .frame(width: 125, height: 140)
                    .position(x:90, y:65)
                VStack{
                    Text("Samya Chauhan")
                        .font(.system(size: 25, weight: .semibold))
                        .frame(width: 350, alignment: .leading)
                    Text("@samya-chauhan")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.gray)
                        .frame(width: 350, alignment: .leading)
                }.position(x:130, y:65)
            }.frame(alignment: .leading)
            
            ScrollView(.vertical){
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightBlue)
                        .opacity(0.35)
                        .frame(width: 165, height: 50)
                    Text("Your Clothes")
                        .font(.system(size:20, weight: .bold))
                        .foregroundColor(.black)
                }
                    
                ScrollView(.horizontal) {
                    ZStack{
                        HStack(spacing: 20) {
                            ForEach(0..<8) {
                                Image("shirt\($0)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 100, height: 100)
                                    .background(Color.lightGrey)
                                    .cornerRadius(25)
                            }
                        }
                    }
                }
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<8) {
                            Image("bottom\($0)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .frame(width: 100, height: 100)
                                .background(Color.lightGrey)
                                .cornerRadius(25)
                        }
                    }
                }
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<4) {
                            Image("shoe\($0)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .frame(width: 100, height: 100)
                                .background(Color.lightGrey)
                                .cornerRadius(25)
                        }
                    }
                }
                Spacer(minLength: 35)
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightBlue)
                        .opacity(0.35)
                        .frame(width: 180, height: 50)
                    Text("Stil Interested?")
                        .font(.system(size:20, weight: .bold))
                        .foregroundColor(.black)
                }
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        Image("shirt6")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("shirt1")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("shirt3")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("shirt2")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                    }
                }
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        Image("bottom0")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("bottom2")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("bottom1")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                        Image("bottom5")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.lightGrey)
                            .cornerRadius(25)
                    }
                }
            }.frame(width: 400, height: 580, alignment: .topLeading)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
