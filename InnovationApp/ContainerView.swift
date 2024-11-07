//
//  ContainerView.swift
//  InnovationApp
//
//  Created by Mohsen on 21/11/2023.
//

import SwiftUI
//import UIComponents

struct ContainerView: View {
//    @StateObject var viewModel = BottomTabViewModel(navItems: [
//        BottomTabBarModel(title: "Find Tutor", icon: "FindTotur"),
//        BottomTabBarModel(title: "Cohorts", icon: "Cohorts"),
//        BottomTabBarModel(title: "", icon: "Middle"),
//        BottomTabBarModel(title: "Lessons", icon: "Lessons"),
//        BottomTabBarModel(title: "More", icon: "More")
//    ])

    
    var body: some View {
        VStack {
            VStack {
                Spacer()
//                BottomTabBarView(viewModel: viewModel)
            }
            .onAppear {
//                viewModel.navItems = [
//                    BottomTabBarModel(title: "Find Tutor", icon: "FindTotur"),
//                    BottomTabBarModel(title: "Cohorts", icon: "Cohorts"),
//                    BottomTabBarModel(title: "", icon: "Middle"),
//                    BottomTabBarModel(title: "Lessons", icon: "Lessons"),
//                    BottomTabBarModel(title: "More", icon: "More")
//                ]
            }
        }
            .navigationTitle("Online Tutor Zone")
            .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    ContainerView()
}
