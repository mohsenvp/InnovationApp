//
//  ContentView.swift
//  InnovationApp
//
//  Created by Helia Fathi on 11/8/23.
//

import SwiftUI
import OnlineZone
import ContactCard
import LearningZone
//import Image_Editor
import OCR_POC
import UIComponents
import CollaborationZone

struct ContentView: View {
//    @StateObject var viewModel = BottomTabViewModel()
    static var sampleViewModel: ZonesViewModel {
        let viewModel = ZonesViewModel()
        viewModel.zones = [EachZoneModel(id: UUID(), title: "Online Tutor\n Zone", image: "OnlineTutor", destination: MainOnlineZone()),
                           EachZoneModel(id: UUID(), title: "Learning\n Zone v0.0.7", image: "LearningZone", destination: LearningZoneLanding()),
                           EachZoneModel(id: UUID(), title: "Comms \n Zone", image: "CommZone", destination: ContainerView())
        ]

        return viewModel
    }
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                ScrollView(.horizontal) {
                    HStack(spacing: 20){
                        NavigationLink(destination: {
                            ContactCardContentView()
//                                .toolbar(.hidden, for: .navigationBar)
                        }) {
                            VStack{
                                Image("HollinsZone")
                                Text("Hollins \nZone")
                                    .font(.poppinsMedium14)
                                    .foregroundColor(Constants.BlackMain19191A)
//                                    .padding()
                            }
                            
                        }
                        NavigationLink(destination: {
                            CollaborationZoneContentView()
                                
                        }) {
                            VStack{
                                Image("CollaborationZone")
                                Text("Comms \nZone")
                                    .font(.poppinsMedium14)
                                    .foregroundColor(Constants.BlackMain19191A)
//                                    .padding()
                            }
                            
                        }
                        NavigationLink(destination: {
                            OCRContentView()
                                .toolbar(.hidden, for: .navigationBar)
                        }) {
                            VStack{
                                Image("ContentZone")
                                Text("Content \nZone")
                                    .font(.poppinsMedium14)
                                    .foregroundColor(Constants.BlackMain19191A)
//                                    .padding()
                            }
                            
                        }
//                        NavigationLink(destination: {
//                            ImageEditorContentView()
////                                .toolbar(.hidden, for: .navigationBar)
//                        }) {
//                            VStack{
//                                Image("MarketingZone")
//                                Text("Marketing \nZone")
//                                    .font(.poppinsMedium14)
//                                    .foregroundColor(Constants.BlackMain19191A)
////                                    .padding()
//                            }
//                            
//                        }
//                        NavigationLink("Contact Card") {
//                            ContactCardContentView()
//                                .toolbar(.hidden, for: .navigationBar)
//                        }
//                        .font(.poppinsSemiBold16)
//                        .foregroundColor(Constants.BlackMain19191A)
//                        .padding()
//                        NavigationLink("OCR") {
//                            OCRContentView()
//                                .toolbar(.hidden, for: .navigationBar)
//                        }
//                        .font(.poppinsSemiBold16)
//                        .foregroundColor(Constants.BlackMain19191A)
//                        .padding()
//                        NavigationLink("Image Editor") {
//                            ImageEditorContentView()
//                                .toolbar(.hidden, for: .navigationBar)
//                        }
//                        .font(.poppinsSemiBold16)
//                        .foregroundColor(Constants.BlackMain19191A)
//                        .padding()
                    }.padding()
                }

                Divider()
                Spacer()
//                HStack{
//                        Zones(viewModel: ContentView.sampleViewModel)
//                }.padding()
//                Divider()
//                NavigationLink(destination: ContainerView()) {
//                    VStack{
//                        Text("Welcome to Innovation App!")
//                            .font(.poppinsBold20)
//                            .foregroundColor(Constants.Turqouise22D8B5)
//                            
//                            
//                        
//                        Text("This app features a modular design with reusable zones and modules for enhanced flexibility and maintainability.")
//                            .font(.poppinsMedium14)
//                            .foregroundColor(Constants.BlackMain19191A)
//                            .padding()
//                        Text("Key Features:\n- Two Reusable Zones: Online Tutor Zone and Learning Zone \n- Three Reusable Modules: OCR, Contact Card, and Image Editor\n By adopting a Swift Package-based approach, we can independently manage and update these components across multiple apps, ensuring version control and seamless integration.")
//                            .font(.poppinsMedium14)
//                            .foregroundColor(Constants.BlackMain19191A)
//                            .multilineTextAlignment(.leading)
//                            .padding()
//                        Text("This modular structure offers several advantages:\n- Improved Code Reusability: Avoids redundant code and promotes efficient development.\n- Enhanced Maintainability: Simplifies updates and bug fixes.\n- Greater Flexibility: Allows for easy customization and adaptation to different app contexts.")
//                            .font(.poppinsMedium14)
//                            .foregroundColor(Constants.BlackMain19191A)
//                            .multilineTextAlignment(.leading)
//                            .padding()
//                        Text("The only problem we have with this approach is that we cannot give the user the option to add or remove zones. In this case, we can add required zones for different systems (of course, we can limit access with controllers disable or active them with show and hide)\nIn this case, we will create an independent application with required zones and modules for each ecosystem.\nScalability and the ability to use different version of each module in different apps are very flexible moreover the size of the build made in this case is too low")
//                            .font(.poppinsMedium14)
//                            .foregroundColor(Constants.BlackMain19191A)
//                            .multilineTextAlignment(.leading)
//                            .padding()
//                        Text("With this foundation, we can efficiently build and maintain innovative applications while ensuring a high level of code quality and reusability.\nI hope this improved response is helpful!")
//                            .font(.poppinsMedium14)
//                            .foregroundColor(Constants.BlackMain19191A)
//                            .padding()
//                    }.padding()
//                }
            }.navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .background(Constants.GrayBGF8F8F8)
                .toolbar(.visible, for: .tabBar)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack(spacing: 0){
                            Text("Hollins")
                                .font(.poppins(.bold, size: 20))
                                .foregroundColor(Constants.BlackMain19191A)
                            Text("MICROSystem Hub")
                                .font(.poppins(.regular, size: 13))
                                .foregroundColor(Constants.BlackMain19191A)
                                .padding(.bottom, 5)
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination: MoreTab(viewModel: MoreTabViewModel())) {
                            Image("ic-profile")
//                                    .renderingMode(.template)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Constants.Blue0099FF)
                        }
                    }
                                  
                }
        }.navigationBarBackButtonHidden(true)
            
    }
}
