//
//  ContentView.swift
//  Rooms
//
//  Created by Kushal Ashok on 6/4/19.
//  Copyright © 2019 tradexport. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @ObjectBinding var store = RoomStore()
    
    var rooms: [Room] = []
    
    var body: some View {
        VStack {
            NavigationView {
                Section {
                    Button(action: addRoom, label: {Text("Add Room")})
                }
                Section {
                    ForEach(store.rooms) {
                        RoomCell()
                        }.onDelete(perform: delete)
                }
            }
        }
    }
    
    func addRoom() {
        self.store.rooms.append(Room(name: "New Room"))
    }
    
    func delete(offsets: IndexSet) {
        print("Deleting")
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
