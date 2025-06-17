import SwiftUI

struct CounterView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("Current count: \(count)").font(.largeTitle)

            Button("Tap +1") {
                count += 1
            }
        }.padding()
    }
}

#Preview {
    CounterView()
}
