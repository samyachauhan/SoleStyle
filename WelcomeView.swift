//  WelcomeView.swift
//  SoleStyle
//  Samya Chauhan

import SwiftUI
struct WelcomeView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Dashboard")
            }
            BrowseOutfitsView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Browse")
            }
            VirtualRenderingView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Design")
            }
            GiveBackView()
                .tabItem {
                    Image(systemName: "app.gift.fill")
                    Text("Give Back")
            }
            AboutYouView()
                .tabItem {
                    Image(systemName: "shared.with.you")
                    Text("About You")
            }
            
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
