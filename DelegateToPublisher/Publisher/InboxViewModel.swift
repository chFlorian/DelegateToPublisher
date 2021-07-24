//
//  InboxViewModel.swift
//  DelegateToPublisher
//
//  Created by florian schweizer on 24.07.21.
//

import Combine

class InboxViewModel: ObservableObject {
    @Published var emails: [Email] = []
    
    private let cancellables: Set<AnyCancellable> = []
    
    init() {
        EmailPublisher.shared
            .publisher
            .sink { email in
                self.emails.append(email)
            }
            .store(in: &cancellables)
    }
}
