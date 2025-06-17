import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModelObject()

    var body: some View {
        VStack(spacing: 16) {
            Text("Username: \(viewModel.username)")
            Text("Age: \(viewModel.age)")

            if viewModel.isLoggedIn {
                Button("Logout") {
                    viewModel.logout()
                }
            } else {
                Button("Login as Alice") {
                    viewModel.login(with: "Alice", age: 25)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
