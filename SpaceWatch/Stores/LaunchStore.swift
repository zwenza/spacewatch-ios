//
//  LaunchStore.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import Combine

class LaunchStore: ObservableObject {
    @Published var launches: [Launch] = []
    
    func fetchUpcoming() {
        SpaceXDataService.shared.fetchUpcoming()
        launches = []
    }
}
