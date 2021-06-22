//
//  UserProfileViewModel.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import Foundation

final class UserProfileViewModel: ObservableObject {
    @Published var userName: String = ""
    
    private let repository: UserRepositoryProtocol
    init(repository: UserRepositoryProtocol = UserRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchUsers { (user) in
            userName = user.userName
        }
    }
}
