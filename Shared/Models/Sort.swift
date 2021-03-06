//
//  TransactionSort.swift
//  Cashable
//
//  Created by Umid Saidov on 02/11/21.
//

import Foundation

enum SortType: String, CaseIterable {
    case date
    case amount
}

enum SortOrder: String, CaseIterable {
    case ascending
    case descending
}

extension SortType: Identifiable {
    var id: String { rawValue }
}

extension SortOrder: Identifiable {
    var id: String { rawValue }
}


struct TransactionSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
            case .date:
                return NSSortDescriptor(keyPath: \Transaction.date, ascending: isAscending)
            case .amount:
                return NSSortDescriptor(keyPath: \Transaction.amount, ascending: isAscending)
        }
    }
}



