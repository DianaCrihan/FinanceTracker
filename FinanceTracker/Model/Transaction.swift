//
//  Transaction.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import Foundation

struct Transaction: Identifiable {
    let id: UUID
    let date: Date
    let description: String
    let category: String
    let amount: Double
    let accountID: UUID
}
