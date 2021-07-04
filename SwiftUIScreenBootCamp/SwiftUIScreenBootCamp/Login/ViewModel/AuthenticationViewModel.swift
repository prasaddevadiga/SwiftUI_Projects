//
//  Authentication.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

class Authentication: ObservableObject {
    @Published var isValidated = false
    
    enum AuthenticationError: Error, LocalizedError, Identifiable  {
        
        case invalidCredintial
        
        var id: String {
            self.localizedDescription
        }
        
        var errorDescription: String? {
            switch self {
                
                case .invalidCredintial:
                    return NSLocalizedString("Please enter valid login credentials", comment: "")
            }
        }
        
    }
    
    
    func updateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
