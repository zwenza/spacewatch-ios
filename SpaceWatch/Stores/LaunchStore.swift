//
//  LaunchStore.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import Foundation
import Combine

class LaunchStore: ObservableObject {
    @Published var launches: [Launch] = []
    
    func fetchUpcoming() {
        SpaceXDataService.shared.fetchUpcoming { result in
            switch(result) {
            case .success(let launches):
                DispatchQueue.main.async {
                    self.launches = launches
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
