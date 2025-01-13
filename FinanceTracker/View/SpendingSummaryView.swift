//
//  SpendingSummaryView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct SpendingSummaryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Spending Summary")
                .font(.headline)
            Text("You've spent $1,200 this month.")
                .font(.body)
        }
        .padding()
        .background(Color.orange.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    SpendingSummaryView()
}
