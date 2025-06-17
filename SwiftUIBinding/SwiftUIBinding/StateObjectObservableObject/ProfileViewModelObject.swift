import Combine
import SwiftUI

class ProfileViewModelObject: ObservableObject {
    @Published var username: String = "Guest"
    @Published var age: Int = 0
    @Published var isLoggedIn: Bool = false

    // 可以模擬登入邏輯
    func login(with name: String, age: Int) {
        username = name
        self.age = age
        isLoggedIn = true
    }

    // 登出
    func logout() {
        username = "Guest"
        age = 0
        isLoggedIn = false
    }
}
