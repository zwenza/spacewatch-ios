//
//  Launch.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import Foundation

struct Launch: Identifiable, Codable {
    var id: Int {
        return self.flight_number
    }
    
    var flight_number: Int
    var mission_name: String
    var launch_site: LaunchSite
}
