//
//  UserApiService.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import Foundation

protocol UserApiServiceProtocol {
    func fetchUser(completion: (UserProfile) -> Void)
}

final class UserApiService: UserApiServiceProtocol {
    func fetchUser(completion: (UserProfile) -> Void) {
        completion(.init(userName: "Prasad"))
    }
}
