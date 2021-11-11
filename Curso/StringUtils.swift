//
//  StringUtils.swift
//  CursoTests
//
//  Created by Renato Savoia Girão on 10/11/21.
//

import Foundation

extension String {
    
    func removeWhiteSpace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
