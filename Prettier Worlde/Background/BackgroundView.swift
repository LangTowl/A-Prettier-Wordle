//
//  BackgroundView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/9/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("test_background")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .rotationEffect(.degrees(90))
    }
}

#Preview {
    BackgroundView()
}
