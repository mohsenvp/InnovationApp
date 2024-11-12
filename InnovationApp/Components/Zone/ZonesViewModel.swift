//
//  HorizontalScrollViewVM.swift
//  Knektu
//
//  Created by Helia on 10/11/23.
//

import Foundation
import SwiftUI

class ZonesViewModel: ObservableObject {
    @Published var zones: [EachZoneModel] = []
}


//MARK: Just for the preview

struct StoriesView_Previews_sample: PreviewProvider {
    static var previews: some View {
        Zones(viewModel: sampleViewModel)
    }
    
    static var sampleViewModel: ZonesViewModel {
        let viewModel = ZonesViewModel()
        viewModel.zones = [EachZoneModel(id: UUID(), title: "1", image: "OnlineTutor", destination: ContainerView()),
                           EachZoneModel(id: UUID(), title: "2", image: "LearningZone", destination: ContainerView()),
                           EachZoneModel(id: UUID(), title: "3", image: "CommZone", destination: ContainerView())
        ]

        return viewModel
    }
}
