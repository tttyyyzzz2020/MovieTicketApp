//
//  TicketShape.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct TicketShape: Shape {
    
    
    let arcRadius: CGFloat = 20
    let smallRadius: CGFloat = 10
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        // 起点
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y  + arcRadius))
        
        // 弧形
        path.addArc(center: CGPoint.zero, radius: arcRadius, startAngle: Angle.degrees(90), endAngle: Angle.degrees(0), clockwise: true)
        
        // 直线
        path.addLine(to: CGPoint(x: rect.midX - arcRadius, y: rect.origin.y))
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.origin.y), radius: arcRadius, startAngle: Angle.degrees(180), endAngle: Angle.degrees(0), clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.size.width - arcRadius, y: rect.origin.y))
        
        
        path.addArc(center: CGPoint(x: rect.size.width, y: rect.origin.y), radius: arcRadius, startAngle: Angle.degrees(180), endAngle: Angle.degrees(90), clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height - smallRadius))
        
        path.addArc(center: CGPoint(x: rect.size.width, y: rect.size.height), radius: smallRadius, startAngle: Angle.degrees(270), endAngle: Angle.degrees(180), clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.origin.x + smallRadius, y: rect.size.height))
        
        path.addArc(center: CGPoint(x: rect.origin.x, y: rect.size.height), radius: smallRadius, startAngle: Angle.degrees(360), endAngle: Angle.degrees(270), clockwise: true)
        
        return path
    }
    
}

struct TicketShape_Previews: PreviewProvider {
    static var previews: some View {
        TicketShape()
            .frame(width: 300, height: 200)
    }
}
