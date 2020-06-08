//
//  DetailInfoView.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct DetailInfoView: View {
    var detail1 = "影厅"
    var detail2 = "8"
    var detail3 = "价格"
    var detail4 = "¥19.9"
    var body: some View {
        VStack(spacing: 8){
            VStack{
                Text(detail1)
                    .foregroundColor(Color.gray)
                Text(detail2)
                    .font(.system(size:30, weight: .heavy))
                    .foregroundColor(Color.black)
                
            }
            VStack{
                Text(detail3)
                    .foregroundColor(Color.gray)
                Text(detail4)
            }
        }
        .fullWidthModifiner(alignment: .center)
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView()
    }
}
