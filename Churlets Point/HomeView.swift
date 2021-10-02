//
//  HomeView.swift
//  Churlets Point
//
//  Created by Nicolas Barbosa on 02/10/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Hello, World!")
                .foregroundColor(.red)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
