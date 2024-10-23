import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileTabView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
            SettingsTabView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}
