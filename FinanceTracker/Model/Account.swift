//
//  Account.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import Foundation


struct Account: Identifiable {
    let id: UUID
    let name: String
    let balance: Double
}
