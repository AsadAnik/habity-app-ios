import SwiftUI

struct ProfileTabView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Welcome to the Profile Screen!")
                .font(.largeTitle)
                .padding()
        }
    }
}
