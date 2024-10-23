import SwiftUI

struct RegisterView: View {
    @Binding var isRegistering: Bool;
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    
    // MARK: Register Simulate
    func simulateRegister() -> Void {
        if !username.isEmpty && !email.isEmpty && !password.isEmpty {
            isRegistering = false
        }
    }
    
    
    // MARK: Navigate Login
    func gotoLogin() -> Void {
        isRegistering = false;
    }
    
    
    var body: some View {
        VStack {
            Text("Register")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            HStack {
                CustomInput(
                    inputTerm: $firstName,
                    placeholder: "First Name",
                    background: Color.gray
                )
                
                CustomInput(
                    inputTerm: $lastName,
                    placeholder: "Last Name",
                    background: Color.gray
                )
            }
            .padding(.bottom, 10)
            
            CustomInput(
                inputTerm: $username,
                placeholder: "Username",
                background: Color.gray
            )
            
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
            
            CustomInput(
                inputTerm: $confirmPassword,
                placeholder: "Confirm Password",
                background: Color.gray,
                isSecure: true
            )
            
            CustomButton(
                title: "Join Now",
                backgroundColor: .orange,
                action: simulateRegister
            )
            
            Button(action: gotoLogin) {
                Text("Go to Login")
                    .padding(.top, 20)
                    .foregroundColor(Color.blue)
            }
            
        }
        .padding()
    }
}
