//
//  Ticket.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import Foundation


struct Ticket: Identifiable {
    var id : UUID = UUID()
    let studioName: String
    let movieTitle: String
    let movieImage: String
    
    static func data() -> [Ticket] {
        return [
            Ticket(studioName: "深圳万象城嘉禾电影院", movieTitle: "星球大战 7", movieImage: "img0"),
            Ticket(studioName: "‎广州飞扬影城-正佳IMAX店", movieTitle: "凯恩森一家", movieImage: "img1"),
            Ticket(studioName: "‎‎天娱广场天河电影城", movieTitle: "小丑 2019 ", movieImage: "img2"),
            Ticket(studioName: "‎万达影院（花都华润万家店）", movieTitle: "勇闯夺命岛 2", movieImage: "img3"),
            Ticket(studioName: "‎中影国际-珠江新城IMAX店", movieTitle: "好莱坞往事", movieImage: "img4"),
        ]
    }
}
