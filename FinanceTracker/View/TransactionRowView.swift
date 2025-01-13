//
//  TransactionRowView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct TransactionRowView: View {
    let transaction: Transaction

    var body: some View {
        HStack {
            Text(transaction.description)
                .font(.headline)
            Spacer()
            Text("$\(transaction.amount, specifier: "%.2f")")
                .foregroundColor(transaction.amount < 0 ? .red : .green)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

#Preview {
    TransactionRowView(transaction: MockData.transactions[0])
}
