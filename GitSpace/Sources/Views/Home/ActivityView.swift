//
//  ActivityView.swift
//  GitSpace
//
//  Created by 박제균 on 2023/01/18.
//

import SwiftUI

struct ActivityView: View {
    
    let gitHubService: GitHubService
    
    init(service: GitHubService) {
        self.gitHubService = service
    }
    
    var body: some View {
        
            ScrollView {
                ForEach(1..<5) { number in
                    ActivityFeedView(service: gitHubService, number: number)
                    Divider()
                }
            } // vstack
    } // body
}
