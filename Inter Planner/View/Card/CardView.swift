//
//  CardView.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 25/8/26.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    let card: Card
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            VStack(alignment: .center, spacing: 2) {
                Text(card.title)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.textPrimary)
                    .multilineTextAlignment(.center)
                
                if let subtitle = card.subtitle {
                    Text(subtitle)
                        .font(.caption2)
                        .foregroundStyle(.textSecondary)
                        .multilineTextAlignment(.center)
                }
            }
            .frame(maxWidth: .infinity)
            
//            Rectangle()
//                .fill(.cardBorder)
//                .frame(height: 1)
//                .padding(.horizontal, -14)
        }
        .padding(14)
        .frame(width: 220, alignment: .leading)
        .background(card.color.fill, in: RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.cardBorder, lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.06), radius: 8, y: 2)
    }
}

// MARK: - Preview
#Preview {
    CardView(card: Card(position: CGPoint(x: 0.0, y: 0.0), title: "Глава 1 - Завязка", subtitle: "Развязываем завязку которую завязали"))
        .padding(100)
        .background(.boardBackground)
}
