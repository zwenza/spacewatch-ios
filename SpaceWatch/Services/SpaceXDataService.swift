//
//  SpaceXDataService.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import Foundation

struct SpaceXDataService {
    static let shared = SpaceXDataService()
    
    let API_URL = "https://api.spacexdata.com/v3"
    
    func fetchUpcoming(completionHandler: @escaping (Result<[Launch], Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: URL(string: "\(API_URL)/launches/upcoming")!) { (data, response, error) in
            guard let data = data, error == nil else {
                completionHandler(.failure(error!))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let launches = try decoder.decode([Launch].self, from: data)
                completionHandler(.success(launches))
            } catch {
                completionHandler(.failure(error))
            }
        }
        task.resume()
    }
}
