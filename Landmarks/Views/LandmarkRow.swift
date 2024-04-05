//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Mansour Mahamat-salle on 05/04/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
          HStack {
              landmark.image
                  .resizable()
                  .frame(width: 50, height: 50)
              Text(landmark.name)


              Spacer()
          }
      }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Preview for the first landmark
            LandmarkRow(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
                .padding()
            
            // Preview for the second landmark
            LandmarkRow(landmark: landmarks[1])
                .previewLayout(.fixed(width: 300, height: 70))
                .padding()
            
            LandmarkRow(landmark: landmarks[2])
                .previewLayout(.fixed(width: 300, height: 70))
                .padding()
        }
    }
}
