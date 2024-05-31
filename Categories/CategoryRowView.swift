//
//  CategoryRowView.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI

struct CategoryRowView: View {
    
    var category: Category?
    
    var body: some View {
        HStack {
            Image(category?.name.trimmingCharacters(in: .whitespacesAndNewlines) ?? "")
                .resizable()
                .frame(width: 40.0, height: 40.0)
                .clipShape(Circle())
            Text(category?.name ?? "")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 7)
                .foregroundColor(Color.appColor.torchRed)
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView().previewLayout(.sizeThatFits)
    }
}
