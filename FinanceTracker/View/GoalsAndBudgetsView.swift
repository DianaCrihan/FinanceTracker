//
//  GoalsAndBudgetsView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct GoalsAndBudgetsView: View {
    let budgets: [Budget]
    

    var body: some View {
        VStack(alignment: .leading) {
            Text("Goals and Budgets")
                .font(.headline)
            ForEach(budgets) { budget in
                HStack {
                    Text(budget.category)
                    Spacer()
                    Text("$\(budget.spent, specifier: "%.2f") / $\(budget.limit, specifier: "%.2f")")
                        .foregroundColor(budget.spent > budget.limit ? .red : .green)
                }
            }
        }
        .padding()
        .background(Color.green.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    GoalsAndBudgetsView(budgets: MockData.budgets)
}
