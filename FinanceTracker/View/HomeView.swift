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
                    TotalBalanceView()

                    // Spending Summary Section
                    SpendingSummaryView()

                    // Goals and Budgets Section
                    GoalsAndBudgetsView()

                    // Quick Actions Section
                    QuickActionsView()
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
