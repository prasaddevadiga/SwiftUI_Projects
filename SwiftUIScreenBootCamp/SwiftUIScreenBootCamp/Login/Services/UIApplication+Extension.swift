//
//  UIApplication+Extension.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
