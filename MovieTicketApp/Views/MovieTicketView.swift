//
//  ContentView.swift
//  MovieTicketApp
//
//  Created by yongzhan on 2020/6/8.
//  Copyright © 2020 yongzhan. All rights reserved.
//

import SwiftUI

struct MovieTicketView: View {
    let tickets: [Ticket] = Ticket.data()
    var body: some View {
        VStack {
            Spacer()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(tickets) { ticket in
                        GeometryReader { gr in
                            Text("\(gr.frame(in: .global).minX)")
                            self.renderTicket(ticket: ticket, angle: gr.frame(in: .global).minX / -10)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                    }
                }
            }
            Spacer()
        }
    }
    
    func renderTicket(ticket: Ticket, angle:CGFloat) -> some View {
        TicketView(ticket: ticket)
            .frame(maxHeight: .infinity)
            .frame(width: UIScreen.main.bounds.width)
            .rotation3DEffect(.degrees(Double(angle)), axis: (x: 0, y: 1, z: 0))
        
    }
}

struct MovieTicketView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTicketView()
    }
}
