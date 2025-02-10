//
//  InitialView.swift
//  InnovationApp
//
//  Created by Mohsen on 03/12/2024.
//

import SwiftUI
import UIComponents

struct InitialView: View {
    
    init(){
        PoppinsFonts.registerFonts()
    }
    var body: some View {
        LoginView()
    }
}

#Preview {
    InitialView()
}
