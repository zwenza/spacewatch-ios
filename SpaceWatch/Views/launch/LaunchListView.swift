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
    
    init() {
        // Workaround since SwiftUI lists do not support seperatorStyle and selectionStyle settings yet
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(launchStore.launches) { launch in
                    ZStack {
                        NavigationLink(destination: LaunchDetailView(launch: launch)) {
                            // Workaround for hiding Disclosure icons in list views
                            EmptyView()
                        }
                        LaunchListRowView(title: launch.mission_name, location: launch.launch_site.site_name)
                    }
                }
            }
            .navigationBarTitle("Upcoming")
        }
        .onAppear {
            self.launchStore.fetchUpcoming()
        }
    }
}

