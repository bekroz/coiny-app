//
//  HomeViewModel.swift
//  Coiny
//
//  Created by BekRoz on 18/11/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=%20%20&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error { 
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code: \(response.statusCode)")
            }
            
            guard let data = data else { return }
            let dataAsString = String(data: data, encoding: .utf8)
            print("DEBUG: Data \(dataAsString )")
        }.resume()
    }
}
