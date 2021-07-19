//
//  FeatureDetail.swift
//  sampletestapp
//
//  Created by Krystian Magiera on 19/07/2021.
//

import SwiftUI

struct FeatureDetail: View {
    var feature: Feature
    
    var body: some View {
        VStack {
            feature.image
                .resizable()
                .frame(width: 300, height: 300)
            HStack {
                Text(feature.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            Divider()
            HStack{
                Text(feature.description) .font(.title2
                ) }
            Divider()
            HStack{Text(feature.details) .font(.title2)}
        }
        .navigationTitle(feature.name)
        .navigationBarTitleDisplayMode(.inline
        )
    }
}

struct FeatureDetail_Previews: PreviewProvider {
    static var previews: some View {
        FeatureDetail(feature: features[0])
    }
}
