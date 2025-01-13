//
//  TransactionDetailView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct TransactionDetailView: View {
    let transaction: Transaction
    
    var body: some View {
        VStack {
            Text(transaction.description)
                .font(.title)
                .padding()
            Text("Amount: $\(transaction.amount, specifier: "%.2f")")
            Text("Category: \(transaction.category)")
            Text("Date: \(transaction.date, formatter: dateFormatter)")
        }
        .padding()
        .navigationTitle("Transaction Details")
    }
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}()

#Preview {
    TransactionDetailView(transaction: MockData.transactions[0])
}
