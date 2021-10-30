//
//  TransactionRow.swift
//  Cashable
//
//  Created by Umid Saidov on 30/10/21.
//

import SwiftUI

struct TransactionRow: View {
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "fuelpump.circle.fill")
                    .renderingMode(.original)
                    .foregroundColor(.green)
                    .font(.system(size: 40))
                VStack(alignment: .leading) {
                    Text("Fuel")
                        .fontWeight(.semibold)
                        .font(.body)
                        .foregroundColor(Color("text"))
                    Text("1 hour ago")
                        .fontWeight(.regular)
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Text("20,000 UZS")
                .foregroundColor(.green)
                .font(.body)
                .fontWeight(.semibold)
                .frame(width: 130, alignment: .trailing)
                .lineLimit(1)
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
            .previewLayout(.sizeThatFits)
    }
}
