//
//  DataProvider.swift
//  DelegateToPublisher
//
//  Created by florian schweizer on 24.07.21.
//

import Foundation

// A class that sends out emails once they are fetched from a remote server
class EmailProvider {
    // Shared instance that can get accessed by every ViewModel
    static let shared = EmailProvider()
    
    // All ViewModel/Objects that want to receive emails
    private var delegates: [EmailDelegate] = []
    
    // A function to add a new delegate to receive emails
    func subscribe(_ delegate: EmailDelegate) {
        delegates.append(delegate)
    }
    
    // A function to distribute emails to all registered delegates
    func send(email: Email) {
        delegates.forEach { delegate in
            delegate.receive(email)
        }
    }
}
