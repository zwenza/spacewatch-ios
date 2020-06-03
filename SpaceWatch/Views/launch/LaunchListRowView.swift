//
//  LaunchListRowView.swift
//  SpaceWatch
//
//  Created by David Jöch on 03.06.20.
//  Copyright © 2020 David Jöch. All rights reserved.
//

import SwiftUI

struct LaunchListRowView: View {
    var title: String
    var location: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            Text(location)
                .font(.subheadline)
        }
    }
}

struct LaunchListRowView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchListRowView(title: "Launch Name", location: "Location")
            .previewLayout(.sizeThatFits)
    }
}
