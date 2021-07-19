//
//  featureRow.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 18/07/2021.
//

import SwiftUI

struct FeatureRow: View {
    var feature: Feature
    
    var body: some View {
        HStack {
            feature.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(feature.name)
            Spacer()
        }
    }
}

struct FeatureRow_Previews: PreviewProvider {
    static var previews: some View {
        FeatureRow(feature: features[0])
        FeatureRow(feature: features[1])
    }
}
