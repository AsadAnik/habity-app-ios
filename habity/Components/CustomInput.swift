import SwiftUI

struct CustomInput: View {
    @Binding var inputTerm: String
    var placeholder: String = "Placeholder"
    var background: Color = Color.gray
    var isSecure: Bool = false
    
    
    var body: some View {
        if !isSecure {
            TextField(placeholder, text: $inputTerm)
                .padding()
                .background(background.opacity(0.2))
                .cornerRadius(10)
                .autocapitalization(.none)
                .padding(.bottom, 10)
            
        } else {
            SecureField("Password", text: $inputTerm)
                .padding()
                .background(background.opacity(0.2))
                .cornerRadius(10)
                .padding(.bottom, 10)
        }
    }
}
