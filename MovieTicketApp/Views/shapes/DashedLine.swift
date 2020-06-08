//
//  DashedLine.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct DashedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        path.addLine(to: CGPoint(x:rect.size.width, y: rect.origin.y))
        path.closeSubpath()
        return path
    }
    
    
}

struct DashedLine_Previews: PreviewProvider {
    static var previews: some View {
        DashedLine().stroke(Color.red, style: StrokeStyle(lineWidth: 1, dash: [4,8], dashPhase: 4))
    }
}
