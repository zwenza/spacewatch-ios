//
//  LaunchDetailView.swift
//  SpaceWatch
//
//  Created by David Jöch on 06.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import SwiftUI

struct LaunchDetailView: View {
    let launch: Launch

    var body: some View {
        VStack {
            Text(launch.mission_name)
                .font(.title)
                .bold()
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}

struct LaunchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchDetailView(launch: Launch(flight_number: 1, mission_name: "TestMission", launch_site: LaunchSite(site_name: "Test Site", site_name_long: "Test Site Long")))
    }
}
