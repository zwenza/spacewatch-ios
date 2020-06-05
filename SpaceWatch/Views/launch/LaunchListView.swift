//
//  ContentView.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import SwiftUI

struct LaunchListView: View {
    @ObservedObject var launchStore: LaunchStore = LaunchStore()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(launchStore.launches) { launch in
                    LaunchListRowView(title: launch.mission_name, location: launch.launch_site.site_name)
                }
            }
            .navigationBarTitle("Upcoming")
        }
        .onAppear {
            self.launchStore.fetchUpcoming()
        }
    }
}

