//
//  TopperProfileView.swift
//  GitSpace
//
//  Created by 최한호 on 2023/02/06.
//

import SwiftUI

struct TopperProfileView: View {
    let targetUserInfo: UserInfo
    
    var body: some View {
        VStack(spacing: 8) {
            
            // MARK: - User Profice Pic
            GithubProfileImage(urlStr: targetUserInfo.avatar_url
                               , size: 100)
            
            
            // MARK: - User Name
            /// userName이 들어갈 자리
            Text(targetUserInfo.githubLogin)
                .bold()
                .font(.title3)
                .foregroundColor(Color(.black))
            
            // MARK: - User Info
            /// user의 레포 수, 팔로워 수,
            /// 대표 레포의 소유자 / 기여자 정보가 표시될 자리
            VStack(spacing: 3) {
                Text("\(targetUserInfo.public_repos) repositories﹒\(targetUserInfo.followers) followers")
//                Text("Owner of ") + Text("\("Airbnb-swift")").bold()
            }
            .font(.footnote)
            .foregroundColor(.gsLightGray2)
            
            // MARK: - 프로필 이동 버튼
            GSNavigationLink(style: .secondary) {
                ProfileDetailView()
            } label: {
                Text("View Profile")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .bold()
            }
            .padding(5)
        }
    }
}
