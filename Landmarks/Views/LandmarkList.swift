//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mansour Mahamat-salle on 05/04/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
            NavigationSplitView {
                List(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            } detail: {
                Text("Select a Landmark")
            }
        }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
