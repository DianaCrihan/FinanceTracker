//
//  AddTransactionView.swift
//  FinanceTracker
//
//  Created by Diana Crihan on 13.01.2025.
//

import SwiftUI

struct AddTransactionView: View {
    @State private var description: String = ""
    @State private var amount: String = ""
    @State private var category: String = "Food"
    
    let categories = ["Food", "Transport", "Entertainment", "Bills"]

    var body: some View {
        Form {
            Section(header: Text("Transaction Details")) {
                TextField("Description", text: $description)
                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
                Picker("Category", selection: $category) {
                    ForEach(categories, id: \.self) { category in
                        Text(category)
                    }
                }
            }
            
            Button("Save Transaction") {
                // Handle transaction saving logic
            }
        }
        .navigationTitle("Add Transaction")
    }
}

#Preview {
    AddTransactionView()
}
