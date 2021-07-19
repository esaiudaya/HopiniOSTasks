//
//  FeatureList.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 19/07/2021.
//

import SwiftUI

struct FeatureList: View {
    var body: some View {
            List(features) { feature in NavigationLink(destination: FeatureDetail(feature: feature)) { FeatureRow(feature: feature)
                }
            .navigationTitle("Features")
        }
    }
}

struct FeatureList_Previews: PreviewProvider {
    static var previews: some View {
        FeatureList()
    }
}
