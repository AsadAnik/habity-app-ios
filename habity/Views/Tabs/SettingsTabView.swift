import SwiftUI

struct SettingsTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "gearshape.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Welcome to the Settings Screen!")
                .font(.largeTitle)
                .padding()
        }
    }
}
