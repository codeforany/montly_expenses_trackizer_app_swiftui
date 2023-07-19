//
//  UIStateModel.swift
//  Trackizer
//
//  Created by CodeForAny on 15/07/23.
//

import SwiftUI

public class UIStateModel: ObservableObject
{
    @Published var activeCard: Int      = 0
    @Published var screenDrag: Float    = 0.0
}
