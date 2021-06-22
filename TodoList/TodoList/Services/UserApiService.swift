//
//  UserApiService.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import Foundation

protocol UserApiServiceProtocol {
    func fetchUser(completion: (User) -> Void)
}

final class UserApiService: UserApiServiceProtocol {
    func fetchUser(completion: (User) -> Void) {
        completion(.init(userName: "Prasad"))
    }
}
