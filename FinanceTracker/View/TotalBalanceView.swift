//
//  TotalBalanceView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct TotalBalanceView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Total Balance")
                .font(.headline)
            Text("$12,345.67")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    TotalBalanceView()
}
