//
//  TopMoversItemView.swift
//  Coiny
//
//  Created by BekRoz on 17/11/22.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // MARK: Image
            BitcoinView()
            // MARK: Coin Info
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // MARK: Coin Percent Change
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
