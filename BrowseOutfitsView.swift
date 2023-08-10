//
//  BrowseOutfitsView.swift
//  SoleStyle
//
//

import SwiftUI

struct BrowseOutfitsView: View {
    @State private var eventChoose = "Casual Gathering"
    let event = ["Casual Gathering", "Interview", "Birthday Party", "School", "Sweet 16", "Concert", "Picnic", "Festival", "Work", "Add New Event"]
    @State private var colorChoose = "Any"
    let color = ["Any", "Black", "White", "Red", "Orange", "Yellow", "Green", "Purple", "Blue", "Gold", "Silver", "Other"]
    @State private var originChoose = "Any"
    let origin = ["Any", "Friends", "All Influencers", "Influencers Followed"]
    var body: some View {
        VStack(){
            HStack{
                Spacer(minLength: 90)
                Text("Find" + "\n" + "Fits")
                    .font(.system(size:50))
                    .bold()
                    .position(y:75)
                Image("topOfLoginScreen")
                    .resizable()
                    .frame(width:400, height:400)
                    .position(x:100, y:30)
            }
            HStack{
                Text("Event Selection")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("", selection: $eventChoose){
                        ForEach(event, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            Spacer(minLength: 50)
            HStack{
                Text("Color Scheme")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("", selection: $colorChoose){
                        ForEach(color, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            Spacer(minLength: 50)
            HStack{
                Text("Outfit Inspiration")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("", selection: $originChoose){
                        ForEach(origin, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            
            Spacer(minLength: 65)
            NavigationLink(destination: BeginBrowsingView())
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightBlue)
                        .opacity(0.35)
                        .frame(width: 300, height: 75)
                    Text("Begin Browsing")
                        .font(.system(size:25))
                        .foregroundColor(Color.black)
                        .bold()
                }
            }
            Spacer(minLength: 85)
        }
    }
}

struct BrowseOutfitsView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseOutfitsView()
    }
}
