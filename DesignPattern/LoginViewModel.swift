//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by lal-7695 on 11/06/22.
//

import Foundation
final class LoginViewModel {
    var error: ObservableObject<String?> = ObservableObject(nil)
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] isLoggedIn in
            self?.error.value = isLoggedIn ? nil : "Invalid Credentials ☹️"
        }
    }
}
