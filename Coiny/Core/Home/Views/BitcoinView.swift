//
//  BitcoinView.swift
//  Coiny
//
//  Created by BekRoz on 18/11/22.
//

import SwiftUI
import Kingfisher

struct BitcoinView: View {
    let image: String
    
    var body: some View {
        KFImage(URL(string: image))
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundColor(.orange)
            .padding(.bottom, 8)
    }
}

//struct BitcoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        BitcoinView(image: image)
//    }
//}
