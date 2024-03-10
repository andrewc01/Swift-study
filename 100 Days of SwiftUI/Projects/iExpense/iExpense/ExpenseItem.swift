//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Andy C on 7/2/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
