//
//  GiveBackView.swift
//  SoleStyle
//
//

import SwiftUI
struct CircularProgressView: View {
    var donatePercent: Double
    var body: some View {
        ZStack () {
            Circle()
                .stroke(Color.red.opacity(0.5), lineWidth: 20)
            Circle()
                .trim(from: 0, to: donatePercent)
                .stroke(Color.green, lineWidth: 20)
                .rotationEffect(.degrees(-90))
        }
    }
}

struct GiveBackView: View {
    @State private var donateAmount = [17.0]
    @State private var donateGoal = 20
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Spacer(minLength: 90)
                Text("Give" + "\n" + "Back")                    .font(.system(size:45))
                    .bold()
                    .position(y:70)
                Spacer(minLength: -50)
                Image("topOfLoginScreen")
                    .resizable()
                    .frame(width:400, height:400)
                    .position(x:130, y:30)
            }
            Spacer(minLength: 50)
            HStack{
                ZStack{
                    CircularProgressView(donatePercent: donateAmount[0]/Double(donateGoal))
                        .scaleEffect(1.2)
                    Text("\(donateAmount[0]/Double(donateGoal)*100, specifier: "%.1f")%")
                        .font(.system(size: 25))
                        .bold()
                }
            }.position(x:200, y:125)
            Text("Donate 3 More Clothing Articles!")
                .font(.system(size:23))
                .bold()
                .position(x:200, y:125)
            Spacer(minLength: 75)
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.lightGreen)
                    .opacity(0.2)
                    .frame(width: 375, height: 50)
                Text("Upload Donation Verification!")
                    .font(.system(size:25))
                    .bold()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.lightGreen)
                    .opacity(0.2)
                    .frame(width: 375, height: 50)
                Text("Donation Centers Near You")
                    .font(.system(size:25))
                    .bold()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.lightGreen)
                    .opacity(0.2)
                    .frame(width: 375, height: 50)
                Text("View Your Friends' Progress")
                    .font(.system(size:25))
                    .bold()
            }
            Spacer(minLength: 75)
        }
    }
}

struct GiveBackView_Previews: PreviewProvider {
    static var previews: some View {
        GiveBackView()
    }
}
