//
//  BoardView.swift
//  Inter Planner
//
//  Created by Vladyslav Mavrodimaki on 24/8/26.
//

import SwiftUI

struct BoardView: View {
    
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
        }
    }
}

// MARK: - Preview
#Preview {
    BoardView()
}
