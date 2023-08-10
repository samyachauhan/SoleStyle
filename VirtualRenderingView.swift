//
//  VirtualRenderingView.swift
//  SoleStyle
//
//

import SwiftUI

struct VirtualRenderingView: View {
    @State private var selectionEvent = "Casual Gathering"
    let event = ["Casual Gathering", "Interview", "Birthday Party", "School", "Sweet 16", "Concert", "Picnic", "Festival", "Work", "Add New Event"]
    @State private var selectionTop = "None"
    let top = ["None", "Jean Jacket", "Athleta Athletic Top", "Urban Outfitters Leather Jacket", "Harlow Half-Sleeve", "H&M Olive Tank", "University of Texas Sweatshirt", "Dilliards Formal White Shirt", "Mavericks Hoodie"]
    @State private var selectionBottom = "None"
    let bottom = ["None", "Lululemon Black Leggings", "Old Navy Pink Shorts", "Pacsun Jeans", "Aerie Green Jeans", "Urban Outfitters Jean Shorts", "Black Athletic Shorts", "H&M Lavender Shorts", "Aerie Black Jeans"]
    @State private var selectionShoe = "None"
    let shoe = ["None", "Nike FlyEase", "Hoka1 Rainbow", "Black Converse", "Macy Black Heels"]
    
    var body: some View {
        VStack(){
           /* ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.lightBlue)
                    .opacity(0.35)
                    .frame(width: 225, height: 50)
                Text("Samya's Style")
                    .font(.system(size:20, weight: .bold))
                    .foregroundColor(.black)
            }*/
            HStack{
                Spacer(minLength: 90)
                Text("Your" + "\n" + "Style")
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
                    Picker("", selection: $selectionEvent){
                        ForEach(event, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            Spacer(minLength: 50)
            Text("From Closet")
                .font(.system(size:30))
                .bold()
            HStack{
                Text("Top")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("", selection: $selectionTop){
                        ForEach(top, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            HStack{
                Text("Bottom")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("", selection: $selectionBottom){
                        ForEach(bottom, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            HStack{
                Text("Shoe")
                    .font(.system(size:25))
                    .bold()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightGreen)
                        .opacity(0.2)
                        .frame(width: 180, height: 50)
                    Picker("Select a paint color", selection: $selectionShoe){
                        ForEach(shoe, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).foregroundColor(Color.black)
                    
                }
            }
            Spacer(minLength: 65)
            NavigationLink(destination: BeginVirtualRenderingView())
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.lightBlue)
                        .opacity(0.35)
                        .frame(width: 300, height: 75)
                    Text("Begin Virtual Rendering")
                        .font(.system(size:25))
                        .foregroundColor(Color.black)
                        .bold()
                }
            }
            Spacer(minLength: 25)
        }
    }
}

struct VirtualRenderingView_Previews: PreviewProvider {
    static var previews: some View {
        VirtualRenderingView()
    }
}
