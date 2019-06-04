//
//  ContentView.swift
//  Rooms
//
//  Created by Kushal Ashok on 6/4/19.
//  Copyright © 2019 tradexport. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var rooms: [Room] = []
    
    var body: some View {
        VStack {
            NavigationView {
                List(0 ..< 20) { room in
                    RoomCell()
                    }.navigationBarTitle(Text("Rooms"))
            }
            }
            
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct RoomCell : View {
    var body: some View {
        return NavigationButton(destination:RoomDetailsView(room: Room(name: "Elizabeth"))) {
            Image(systemName: "photo").cornerRadius(8)
            VStack(alignment: .leading) {
                Text("Rooms")
                Text("20 People")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
