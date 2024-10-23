import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false
    @State private var isRegistering = false
    
    
    var body: some View {
        NavigationView {
            if isLoggedIn {
                HomeView()
                
            } else if isRegistering {
                RegisterView(isRegistering: $isRegistering)
                
            } else {
                LoginView(
                    isLoggedIn: $isLoggedIn,
                    isRegistering: $isRegistering
                )
            }
        }
    }
}



#Preview {
    ContentView()
}
