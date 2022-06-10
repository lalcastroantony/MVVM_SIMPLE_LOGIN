//
//  NetworkService.swift
//  DesignPattern
//
//  Created by lal-7695 on 11/06/22.
//

import Foundation
final class NetworkService {
    static let shared = NetworkService()
    private var user: User?
    private init() {}
    
    func login(email: String, password: String, completion: @escaping((Bool)->Void)) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "lalcastro@lalcastro.com" && password == "1@mSpeed" {
                self?.user = User.init(firstName: "Lal Castro", lastName: "Antony", email: email, age: 28)
                completion(true)
            }
            else {
                self?.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        self.user!
    }
}
