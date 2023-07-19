//
//  CreditCardModel.swift
//  Trackizer
//
//  Created by CodeForAny on 18/07/23.
//

import SwiftUI

struct CreditCardModel: Identifiable {
    var id: UUID = UUID()
    var name: String = ""
    var number: String = ""
    var month_year: String = ""
}
