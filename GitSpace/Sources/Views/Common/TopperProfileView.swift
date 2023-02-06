//
//  TopperProfileView.swift
//  GitSpace
//
//  Created by 최한호 on 2023/02/06.
//

import SwiftUI

struct TopperProfileView: View {
    var body: some View {
        VStack(spacing: 8) {
            
            // MARK: - User Profice Pic
            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/64696968?v=4")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 100)
            } placeholder: {
                ProgressView()
            } // AsyncImage
            
            
            // MARK: - User Name
            /// userName이 들어갈 자리
            Text("\("guguhanogu")")
                .bold()
                .font(.title3)
                .foregroundColor(Color(.black))
            
            // MARK: - User Info
            /// user의 레포 수, 팔로워 수,
            /// 대표 레포의 소유자 / 기여자 정보가 표시될 자리
            VStack(spacing: 3) {
                Text("\("0") repositories﹒\("392") followers")
                Text("Owner of ") + Text("\("Airbnb-swift")").bold()
            }
            .font(.footnote)
            .foregroundColor(.gsLightGray2)
            
            // MARK: - 프로필 이동 버튼
            NavigationLink {
                ProfileDetailView()
            } label: {
                GSButton.CustomButtonView(style: .secondary(
                    isDisabled: false)
                ) {
                    
                } label: {
                    Text("View Profile")
                        .font(.footnote)
                        .foregroundColor(.primary)
                        .bold()
                        .padding(-8)
                }
                .disabled(true)
            }
            .padding(5)
            
        }
    }
}

struct TopperProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TopperProfileView()
    }
}