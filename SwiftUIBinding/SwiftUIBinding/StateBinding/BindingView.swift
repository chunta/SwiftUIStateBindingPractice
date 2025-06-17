import SwiftUI

struct ParentView: View {
    @State private var title: String = "Initial Title"

    let randomTitles = [
        "Hello World",
        "SwiftUI Rocks",
        "Combine & State",
        "Random Title",
        "Welcome!",
    ]

    var body: some View {
        VStack {
            Text(title)
                .font(.title)

            Button("Change Text") {
                if let newTitle = randomTitles.randomElement() {
                    title = newTitle
                }
            }
            .padding()

            TitleEditor(title: $title)
        }
        .padding()
    }
}

struct TitleEditor: View {
    @Binding var title: String

    var body: some View {
        TextField("Edit title here", text: $title)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

#Preview {
    ParentView()
}
