//
//  ContentView.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import SwiftUI

struct LaunchListView: View {
    var body: some View {
        NavigationView {
            List {
                LaunchListRowView(title: "Test Launch 1", location: "Vienna")
                LaunchListRowView(title: "Test Launch 1", location: "Vienna")
            }
            .navigationBarTitle("Upcoming")
        }
    }
}

struct LaunchListView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchListView()
    }
}

