//
//  BitcoinView.swift
//  Coiny
//
//  Created by BekRoz on 18/11/22.
//

import SwiftUI

struct BitcoinView: View {
    var body: some View {
        Image(systemName: "bitcoinsign.circle.fill")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundColor(.orange)
            .padding(.bottom, 8)
    }
}

struct BitcoinView_Previews: PreviewProvider {
    static var previews: some View {
        BitcoinView()
    }
}
