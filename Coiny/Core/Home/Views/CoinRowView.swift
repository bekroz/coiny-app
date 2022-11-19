//
//  CoinRowView.swift
//  Coiny
//
//  Created by BekRoz on 18/11/22.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
            // MARK: Market Cap Rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            // MARK: Image
            BitcoinView()
            
            // MARK: Coin Name Info
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.leading, 4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // MARK: Coin Price Info
            VStack(alignment: .trailing, spacing: 4) {
                Text("$20,330.00")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.leading, 4)
                
                Text("-5.60%")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
