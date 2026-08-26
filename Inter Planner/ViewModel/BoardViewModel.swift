//
//  BoardViewModel.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 26/8/26.
//

import Foundation

@Observable class BoardViewModel {
    // MARK: - Properties
    /// Mock cards
    var cards: [Card] = [
        Card(position: CGPoint(x: 180, y: 160), color: .blue,  title: "Глава 1 — Завязка", subtitle: "Мара находит письмо"),
        Card(position: CGPoint(x: 430, y: 300), color: .green, title: "Герой — Мара"),
        Card(position: CGPoint(x: 260, y: 460), color: .purple, title: "Сцены"),
    ]
    
    // Move Card Functionality
    func move(_ card: Card, to newPosition: CGPoint) {
        guard let index = cards.firstIndex(where: { $0.id == card.id }) else { return }
        cards[index].position = newPosition
    }
}
