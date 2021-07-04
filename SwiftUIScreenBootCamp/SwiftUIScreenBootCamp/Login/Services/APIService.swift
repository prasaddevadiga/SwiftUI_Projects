//
//  APIService.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    func login(credintials: Credenntials,
               completion: @escaping (Result<Bool, Authentication.AuthenticationError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if credintials.password == "password" {
                completion(.success(true))
            } else {
                completion(.failure(.invalidCredintial))
            }
        }
    }
}
