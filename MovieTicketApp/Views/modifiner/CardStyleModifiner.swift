//
//  CardStyleModifiner.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct CardStyleModifiner: ViewModifier {
    func body(content: Content) -> some View {
        content.shadow(color: Color.gray, radius: 10, x: 0, y: 10)
    }
}

extension View {
    func cardStyleModifiner() -> some View {
        self.modifier(CardStyleModifiner())
    }
}
