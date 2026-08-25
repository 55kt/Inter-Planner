//
//  CardView.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 25/8/26.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Глава 1 - Завязка")
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(.textPrimary)
            
            Rectangle()
                .fill(.cardBorder)
                .frame(height: 1)
                .padding(.horizontal, -14)
            
            Text("Мара находит письмо, адресованное ей ещё до рождения.")
                .font(.system(size: 13))
                .foregroundStyle(Color(.textSecondary))
        }
        .padding(14)
        .frame(width: 220, alignment: .leading)
        .background(.cardBlue, in: RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.cardBorder, lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.06), radius: 8, y: 2)
    }
}

// MARK: - Preview
#Preview {
    CardView()
        .padding(40)
        .background(.boardBackground)
}
