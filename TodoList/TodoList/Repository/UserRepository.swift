//
//  UserRepository.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import Foundation

protocol UserRepositoryProtocol {
    func fetchUsers(completion: (UserProfile) -> Void)
}

final class UserRepository: UserRepositoryProtocol {
    private let apiService: UserApiServiceProtocol
    
    init(apiService: UserApiServiceProtocol = UserApiService()) {
        self.apiService = apiService
    }
    
    func fetchUsers(completion: (UserProfile) -> Void) {
        apiService.fetchUser(completion: completion)
    }
}
