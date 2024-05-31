//
//  CastRowView.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI
import CachedAsyncImage

struct CastRowView: View {
    
    var viewModel: CastViewModel!
    
    var body: some View {
        VStack (spacing: 10) {
            CachedAsyncImage(
                url: URL(string: viewModel.imageUrl),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                        .frame(width: 100, height: 150)
                },
                placeholder: {
                    Image("noImage").resizable()
                        .frame(width: 100, height: 150)
                        .aspectRatio(contentMode: .fit)
                }
            )
            VStack (spacing: 2) {
                Text(viewModel.name)
                    .foregroundColor(.white)
                    .font(.system(size: 12, weight: .bold))
                    .lineLimit(1).frame(maxWidth: 100)
                Text(viewModel.character)
                    .foregroundColor(.white)
                    .font(.system(size: 8, weight: .regular))
                    .padding(.bottom, 16)
                    .lineLimit(1)
                    .frame(maxWidth: 100)
            }
        }
    }
}
