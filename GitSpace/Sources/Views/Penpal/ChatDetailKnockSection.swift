//
//  ChatDetailKnockSection.swift
//  GitSpace
//
//  Created by 원태영 on 2023/02/01.
//

import SwiftUI

struct ChatDetailKnockSection: View {
    
    let chat: Chat
    
    var body: some View {
        VStack(spacing: 20) {
            Text(chat.stringKnockDate)
                .font(.caption)
                .foregroundColor(.gsLightGray2)
            HStack {
                Text("**Knock Message**")
					.padding(.leading, 20)
                    .font(.caption)
                    .foregroundColor(.gsLightGray2)
                    
                Spacer()
            }
            
            Text(chat.knockContent)
                .modifier(KnockMessageModifier())
            
        }
    }
}

