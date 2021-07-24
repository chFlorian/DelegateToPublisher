//
//  EmailDelegate.swift
//  DelegateToPublisher
//
//  Created by florian schweizer on 24.07.21.
//

import Foundation

// A protocol to register to the EmailProvider and receive Emails
protocol EmailDelegate {
    // A function called by EmailProvider to distribute emails to all registered delegates
    func receive(_ email: Email)
}
