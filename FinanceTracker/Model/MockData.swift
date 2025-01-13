//
//  MockData.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import Foundation

struct MockData {
    static let accounts: [Account] = [
        Account(id: UUID(), name: "Checking", balance: 5200.00),
        Account(id: UUID(), name: "Savings", balance: 10300.00),
        Account(id: UUID(), name: "Credit Card", balance: -300.00)
    ]

    static let budgets: [Budget] = [
        Budget(id: UUID(), category: "Food", limit: 500.00, spent: 350.00),
        Budget(id: UUID(), category: "Transport", limit: 300.00, spent: 200.00),
        Budget(id: UUID(), category: "Entertainment", limit: 400.00, spent: 450.00)
    ]

    static let transactions: [Transaction] = [
        Transaction(
            id: UUID(),
            date: Date(),
            description: "Grocery Shopping",
            category: "Food",
            amount: 45.50,
            accountID: accounts[0].id
        ),
        Transaction(
            id: UUID(),
            date: Date(),
            description: "Gas Refill",
            category: "Transport",
            amount: 60.00,
            accountID: accounts[0].id
        ),
        Transaction(
            id: UUID(),
            date: Date(),
            description: "Movie Tickets",
            category: "Entertainment",
            amount: 25.00,
            accountID: accounts[2].id
        )
    ]
}
