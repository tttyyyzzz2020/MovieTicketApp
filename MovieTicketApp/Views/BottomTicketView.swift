//
//  BottomTicketView.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct BottomTicketView: View {
    var body: some View {
        Image("barcode")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .fullWidthModifiner(alignment: .center)
            .padding()
            .background(Color("barcode"))
    }
}

struct BottomTicketView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTicketView()
    }
}
