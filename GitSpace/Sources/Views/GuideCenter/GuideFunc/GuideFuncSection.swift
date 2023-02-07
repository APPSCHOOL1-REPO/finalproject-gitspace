//
//  GuideFuncSection.swift
//  GitSpace
//
//  Created by 최한호 on 2023/02/07.
//

import SwiftUI

struct GuideFuncSection: View {
    var body: some View {
        Group {
            
            HStack {
                GSText.CustomTextView(
                    style: .title2,
                    string: "GitSpace 기능")
                
                Spacer()
            }
            .padding(.horizontal)
            
            
            GSCanvas.CustomCanvasView.init(style: .primary, content: {
                /* 캔버스 내부: */
                
                Group {
                    
                    NavigationLink {
                        
                    } label: {
                        HStack(spacing: 10) {
                            
                            Image("GitSpace-KnockHistoryView-LightMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 50)
                            
                            VStack(alignment: .leading) {
                                GSText.CustomTextView(
                                    style: .title3,
                                    string: "Star")
                                
                                GSText.CustomTextView(
                                    style: .body1,
                                    string: "다시 보고 싶은 레포,\nstar에 대한 모든 것")
                                .multilineTextAlignment(.leading)
                            }
                            
                            VStack {
                                Text("")
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gsGray2)
                        } // HStack
                    } // NavigationLink
                    
                    
                    
                    NavigationLink {
                        KnockGuideView()
                    } label: {
                        HStack(spacing: 10) {
                            
                            Image("GitSpace-KnockHistoryView-LightMode")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 50)
                            
                            VStack(alignment: .leading) {
                                GSText.CustomTextView(
                                    style: .title3,
                                    string: "Knock")
                                
                                GSText.CustomTextView(
                                    style: .body1,
                                    string: "정중한 대화의 시작,\n노크에 대한 모든 것")
                                .multilineTextAlignment(.leading)
                            }
                            
                            VStack {
                                Text("")
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gsGray2)
                        } // HStack
                    } // NavigationLink
                }
                
                
            }) // GSCanvas
            .padding(.horizontal)
        } // Group
    }
}

struct GuideFuncSection_Previews: PreviewProvider {
    static var previews: some View {
        GuideCenterView()
    }
}
