//
//  ZoneBase.swift
//  Knektu
//
//  Created by Helia on 10/11/23.
//

import Foundation
import SwiftUI
import LearningZone
import UIComponents

struct Zones: View {
    @ObservedObject var viewModel: ZonesViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(viewModel.zones) { data in
                    Zone(eachZone: data)
                }
            }
        }
    }
}

struct Zone: View {
    var eachZone: EachZoneModel
    

    var body: some View {
        NavigationLink(destination: AnyView(eachZone.destination)) {
            VStack {
                
                Image(eachZone.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
    //                .clipShape(Circle())
    //                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .padding(4)
                Text(eachZone.title)
                    .font(.poppinsRegular13)
                    .foregroundColor(Constants.BlackMain19191A)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }

        }

    }
}
