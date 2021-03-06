//
//  AccountImage.swift
//  Cashable
//
//  Created by Umid Saidov on 01/11/21.
//

import SwiftUI

struct AccountImage: View {
    
    var type: AccountType
    var width: CGFloat
    var padding: CGFloat
    
    var body: some View {
        Image(systemName: type.systemNameIcon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: width)
            .padding(padding)
            .foregroundColor(.white)
            .background(type.color)
            .clipShape(Circle())
    }
}

struct AccountImage_Previews: PreviewProvider {
    static var previews: some View {
        AccountImage(type: .balance, width: 20, padding: 10)
    }
}
