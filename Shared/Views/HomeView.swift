//
//  HomeView.swift
//  Cashable
//
//  Created by Umid Saidov on 29/10/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            Section {
                CashFlowRow(incomeAmount: 0, expensesAmount: 0, currency: "USD")
            }
            Section {
                AccountsRow()
            }
            Section {
                TransactionRow()
                TransactionRow()
                TransactionRow()
                TransactionRow()
                TransactionRow()
            }
            
        }
        .navigationTitle("Home")
#if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
#endif
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
