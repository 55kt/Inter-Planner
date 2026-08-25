//
//  PaletteColor.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 25/8/26.
//

import Foundation
import SwiftUI

enum PaletteColor: String, Codable, CaseIterable {
    case blue
    case green
    case purple
    case teal
    case neutral
    
    var fill: Color {
        switch self {
        case .blue:
                .cardBlue
        case .green:
                .cardGreen
        case .purple:
                .cardPurple
        case .teal:
                .cardTeal
        case .neutral:
                .cardNeutral
        }
    }
}
