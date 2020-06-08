//
//  TopTicketView.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct TopTicketView: View {
    var studioName: String = "深圳万象城嘉禾电影院"
    var movieTitle: String = "星球大战"
    var movieImage: String = "img0"
    var body: some View {
        
        VStack{
            
            
            VStack {
                Text(studioName)
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray)
                    .fullWidthModifiner(alignment: .leading)
                
                Text(movieTitle)
                    .font(.system(size: 30, weight:.heavy))
                    .foregroundColor(Color.black)
                    .fullWidthModifiner(alignment: .leading)
            }
            .padding(.top, 30)
            .padding(.horizontal)
            Image(movieImage)
                .resizable()
                .frame(height: 200)
                .fullWidthModifiner(alignment: .center)
            
            HStack{
                DetailInfoView()
                DetailInfoView(detail1: "排号", detail2: "J", detail3: "日期", detail4: "23/05/2020")
                DetailInfoView(detail1: "座位", detail2: "34", detail3: "时间", detail4: "18:45")
            }
            .padding(.bottom)
        }
    }
}

struct TopTicketView_Previews: PreviewProvider {
    static var previews: some View {
        TopTicketView()
    }
}
