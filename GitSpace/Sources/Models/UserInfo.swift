//
//  UserInfo.swift
//  GitSpace
//
//  Created by 원태영 on 2023/01/27.
//

import Foundation

struct UserInfo : Identifiable, Codable {
    // MARK: -Properties
    let id: String // 유저 ID
    let name: String // 유저 닉네임
    let email: String // 유저 이메일
    let date: Date // 유저 회원가입 일시
    let blockedUserIDs: [String] // 차단한 유저 ID 리스트
    
    // MARK: -Func : Double 타입 Date를 문자열로 반환하는 함수
    var stringDate : String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
}
