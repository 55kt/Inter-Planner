//
//  BoardView.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 24/8/26.
//

import SwiftUI

struct BoardView: View {
    // MARK: - Properties
    let cards: [Card] = [
        Card(position: CGPoint(x: 180, y: 160), color: .blue,  title: "Глава 1 — Завязка", subtitle: "Мара находит письмо"),
        Card(position: CGPoint(x: 430, y: 300), color: .green, title: "Герой — Мара"),
        Card(position: CGPoint(x: 260, y: 460), color: .purple, title: "Сцены"),
    ]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Canvas { context, size in
                //Board background color
                context.fill(Path(CGRect(origin: .zero, size: size)), with: .color(.boardBackground))
                
                // MARK: - Board Dots
                /// Dots spacing
                let r: CGFloat = 1.5
                let spacing: CGFloat = 27
                
                /// Square dots
                for x in stride(from: 0, through: size.width, by: spacing) {
                    for y in stride(from: 0, through: size.height, by: spacing) {
                        let rect = CGRect(x: x - r, y: y - r, width: 2*r, height: 2*r)
                        context.fill(Path(ellipseIn: rect), with: .color(.boardDots))
                        
                        /// Central dot
                        let centerX = x + spacing/2
                        let centerY = y + spacing/2
                        let centerRect = CGRect(x: centerX - r, y: centerY - r, width: 2*r, height: 2*r)
                        context.fill(Path(ellipseIn: centerRect), with: .color(.boardDots))
                    }
                }
            }
            
            // MARK: - Mock Cards
            ForEach(cards) { card in
                CardView(card: card)
                    .position(card.position)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    BoardView()
}
