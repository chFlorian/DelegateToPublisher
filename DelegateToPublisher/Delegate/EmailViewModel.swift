//
//  EmailViewModel.swift
//  DelegateToPublisher
//
//  Created by florian schweizer on 24.07.21.
//

import Foundation

// A regular ViewModel for some SwiftUI View
class EmailViewModel: ObservableObject {
    @Published var emails: [Email] = []
    
    init() {
        // Register the ViewModel to receive emails
        EmailProvider.shared.subscribe(self)
    }
}

// Conforming the ViewModel to the delegate protocol
extension EmailViewModel: EmailDelegate {
    func receive(_ email: Email) {
        emails.append(email)
    }
}
