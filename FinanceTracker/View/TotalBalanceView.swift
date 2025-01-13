//
//  TotalBalanceView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct TotalBalanceView: View {
    let accounts: [Account]
    
    var totalBalance: Double {
        accounts.reduce(0) { $0 + $1.balance }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Total Balance")
                .font(.headline)
            Text("$\(totalBalance, specifier: "%.2f")")
                .font(.largeTitle)
                .bold()
                .foregroundColor(totalBalance < 0 ? .red : .green)
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    TotalBalanceView(accounts: MockData.accounts)
}
