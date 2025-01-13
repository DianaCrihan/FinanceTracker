//
//  GoalsAndBudgetsView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct GoalsAndBudgetsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Goals and Budgets")
                .font(.headline)
            Text("3 goals active · 2 budgets overspent")
                .font(.body)
        }
        .padding()
        .background(Color.green.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    GoalsAndBudgetsView()
}
