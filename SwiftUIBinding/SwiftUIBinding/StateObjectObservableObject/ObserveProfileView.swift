import SwiftUI

struct ObserveProfileView: View {
    @ObservedObject var viewModel: ProfileViewModelObject

    var body: some View {
        VStack {
            Text("User: \(viewModel.username) \(viewModel.age)")

            Button("Login as Alice") {
                viewModel.login(with: "Alice", age: 25)
            }

            Button("Logout") {
                viewModel.logout()
            }
        }
    }
}

#Preview {
    ObserveProfileView(viewModel: ProfileViewModelObject())
}
