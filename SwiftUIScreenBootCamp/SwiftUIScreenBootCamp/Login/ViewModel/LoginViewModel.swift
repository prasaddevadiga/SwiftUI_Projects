//
//  LoginViewModel.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import Foundation
class LoginViewModel: ObservableObject {
    @Published var credenntials = Credenntials()
    @Published var showProgressView = false
    @Published var error: Authentication.AuthenticationError?
    
    var loginDisabled: Bool {
        credenntials.email.isEmpty || credenntials.password.isEmpty
    }
    
    func login(completion: @escaping(Bool) -> Void) {
        showProgressView = true
        APIService.shared.login(credintials: credenntials) { [unowned self] (result: Result<Bool, Authentication.AuthenticationError>) in
            showProgressView = false
            switch result {
                
                case .success(_):
                    completion(true)
                case .failure(let authenticationError):
                    credenntials = Credenntials()
                    error = authenticationError
                    completion(false)
            }
        }
    }
}
