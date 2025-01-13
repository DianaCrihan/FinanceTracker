//
//  SpendingSummaryView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct SpendingSummaryView: View {
    let transactions: [Transaction]
    
    var totalSpent: Double {
        transactions.reduce(0) { $0 + $1.amount }
    }
    

    var body: some View {
        VStack(alignment: .leading) {
            Text("Spending Summary")
                .font(.headline)
            Text("You've spent $\(totalSpent, specifier: "%.2f") this month.")
                .font(.body)
        }
        .padding()
        .background(Color.orange.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    SpendingSummaryView(transactions: MockData.transactions)
}
