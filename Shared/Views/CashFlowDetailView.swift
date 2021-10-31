//
//  CashFlowDetailView.swift
//  Cashable
//
//  Created by Umid Saidov on 31/10/21.
//

import SwiftUI

struct CashFlowDetailView: View {
    
    var body: some View {
        List {
            Section {
                BalanceView()
            }
            Section {
                ForEach(0..<10) { _ in
                    CategoryRow(title: "Fuel", category: .other, amount: "20,000 UZS", type: .income)
                }
            }
        }
    }
}

struct CashFlowDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CashFlowDetailView()
    }
}
