//
//  SetLanguageView.swift
//  GitSpace
//
//  Created by μ΅ννΈ on 2023/02/09.
//

import SwiftUI

struct SetLanguageView: View {
    
    @State var isEnglish: Bool = true
    
    
    var body: some View {
        List {
            
            // MARK: - English, US
            Button {
                isEnglish = true
            } label: {
                HStack {
                    Text("πΊπΈ")
                        .font(.title)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("English, US")
                        Text("English, US")
                            .font(.caption2)
                    }
                    .foregroundColor(.primary)
                    
                    Spacer()
                    if isEnglish {
                        Image(systemName: "checkmark")
                            //.foregroundColor(.gsGreenPrimary)
                    }
                }
            }

            // MARK: - Korean
            Button {
                isEnglish = false
            } label: {
                HStack {
                    Text("π°π·")
                        .font(.title)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("νκ΅­μ΄ (μ§μ μμ )")
                        Text("Korean (To be applied)")
                            .font(.caption2)
                    }
                    
                    Spacer()
                    if !isEnglish {
                        Image(systemName: "checkmark")
                            .foregroundColor(.gsGreenPrimary)
                    }
                }
                .foregroundColor(.gsLightGray2)
            }
            .disabled(true)
        }
        .navigationBarTitle("Language", displayMode: .inline)
    }
}

struct SetLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        SetLanguageView()
    }
}
