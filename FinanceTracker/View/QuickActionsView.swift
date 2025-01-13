//
//  QuickActionsView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct QuickActionsView: View {
    var body: some View {
        HStack(spacing: 15) {
            NavigationLink(destination: AddTransactionView()) {
                Text("Add Transaction")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                print("Link Account")
            }) {
                Text("Link Account")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    QuickActionsView()
        .padding()
}
