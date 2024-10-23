import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var isRegistering: Bool
    @State private var email = ""
    @State private var password = ""
    
    
    // MARK: Login Simulate
    func simulateLogin() -> Void {
        if !email.isEmpty && !password.isEmpty {
            isLoggedIn = true
        }
    }
    
    
    // MARK: Navigate Register
    func gotoRegister() -> Void {
        isRegistering = true
    }
    
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            CustomInput(
                inputTerm: $email,
                placeholder: "Email",
                background: Color.gray
            )
            
            CustomInput(
                inputTerm: $password,
                placeholder: "Password",
                background: Color.gray,
                isSecure: true
            )
            
            CustomButton(
                title: "Login",
                backgroundColor: .red,
                action: simulateLogin
            )
            
            Button(action: gotoRegister) {
                Text("Go to Register")
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)
            }
        }
        .padding()
    }
}
