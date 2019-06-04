//
//  RoomDetailsView.swift
//  Rooms
//
//  Created by Kushal Ashok on 6/4/19.
//  Copyright © 2019 tradexport. All rights reserved.
//

import SwiftUI

struct RoomDetailsView : View {
    //allocated on a stack and passed by value
    let room: Room
    
    //This variable is maintained by the swift UI and not the app
    @State private var zoomed = false
    
    var body: some View {
        ZStack {
            Text(room.name)
                .font(zoomed ? .title : .body)
                .tapAction {
                    withAnimation(self.zoomed.toggle())
                }
                .navigationBarTitle(Text("Room one"))
            Image(systemName: "video.fill")
                .font(.title)
                .padding(.all)
                .transition(.move(edge: Edge.leading))
        }
    }
}

#if DEBUG
struct RoomDetailsView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            RoomDetailsView(room: Room(name: "Luther King"))
            RoomDetailsView(room: Room(name: "Luther King"))
        }
    }
}
#endif
