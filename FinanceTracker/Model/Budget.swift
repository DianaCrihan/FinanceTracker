//
//  Budget.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import Foundation

struct Budget: Identifiable {
    let id: UUID
    let category: String
    let limit: Double
    let spent: Double
}
