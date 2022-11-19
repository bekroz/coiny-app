//
//  CoinRowView.swift
//  Coiny
//
//  Created by BekRoz on 18/11/22.
//

import SwiftUI

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // MARK: Market Cap Rank
            Text("\(coin.marketCap ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            // MARK: Image
            BitcoinView(image: coin.image)
            
            // MARK: Coin Name Info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // MARK: Coin Price Info
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice.toCurrency())")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coin.priceChangePercentage24H > 24 ? .green : .red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView(coin: Coin)
//
//    }
//}
