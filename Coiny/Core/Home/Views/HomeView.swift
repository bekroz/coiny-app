//
//  HomeView.swift
//  Coiny
//
//  Created by BekRoz on 17/11/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // MARK: Top Movers View
                TopMoversView()
                
                Divider()
                // MARK: All Coins View
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
