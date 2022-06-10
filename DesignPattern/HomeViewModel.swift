//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by lal-7695 on 11/06/22.
//

import Foundation
final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
