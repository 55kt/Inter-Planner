//
//  Card.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 25/8/26.
//

import Foundation
import SwiftUI // нужно потом вынести маппинг -> Color в UI расширение. Модель не должна знать про UI

struct Card: Identifiable {
    let id: UUID = UUID()
    let createdAt: Date = Date.now
    var position: CGPoint
    var color: PaletteColor = .neutral
    var title: String
    var subtitle: String?
//    var file: FileDocument?
//    var video: Videofile?
//    var audio: AudioFile?
//    var codeBlock: String
//    var photo: Image
}
