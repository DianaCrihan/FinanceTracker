//
//  HomeView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Total Balance Section
                    TotalBalanceView(accounts: MockData.accounts)

                    // Spending Summary Section
                    SpendingSummaryView(transactions: MockData.transactions)

                    // Goals and Budgets Section
                    GoalsAndBudgetsView(budgets: MockData.budgets)

                    // Quick Actions Section
                    QuickActionsView()
                    
                    ForEach(MockData.transactions) { transaction in
                        NavigationLink(destination: TransactionDetailView(transaction: transaction)) {
                            TransactionRowView(transaction: transaction)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Overview")
        }
    }
}

#Preview {
    HomeView()
}
