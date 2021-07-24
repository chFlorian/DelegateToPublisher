//
//  EmailPublisher.swift
//  DelegateToPublisher
//
//  Created by florian schweizer on 24.07.21.
//

import Combine

// A class that sends out emails once they are fetched from a remote server
class EmailPublisher {
    // Shared instance that can get accessed by every ViewModel
    static let shared = EmailPublisher()
    
    // A Combine Publisher used to send values to all subscribed ViewModels
    let publisher = PassthroughSubject<Email, Never>()
    
    // A function to distribute emails to all subscribed ViewModels
    func send(email: Email) {
        publisher.send(email)
    }
}
