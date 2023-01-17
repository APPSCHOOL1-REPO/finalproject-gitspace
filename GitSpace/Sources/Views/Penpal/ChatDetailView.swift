//
//  ChatDetailView.swift
//  GitSpace
//
//  Created by 원태영 on 2023/01/17.
//

import SwiftUI

struct Message : Identifiable {
    let id = UUID().uuidString
    let isRead : Bool
    let time : String
}

struct ChatDetailView: View {
    
    @State private var messageField : String = ""
    @State private var messages : [Message] = []

    
    var body: some View {
        LazyVStack {
            ScrollView {
                Section {
                    Divider()
                    
                    AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/45925685?v=4")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width : 100)
                    } placeholder: {
                        Text("불러오는 중입니다...")
                    }
                    .padding(.vertical, 10)
                    .padding(.top, 10)
                    
                    
                    Text("Taeyoung Won")
                        .bold()
                        .padding(.vertical, 20)
                    
                    Text("wontaeyoung,")
                    Text("starred 3 repos,")
                    Text("Airbnb-swift Repository Owner")
                }
                
                
                Section {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width - 60, height: 5)
                        .foregroundColor(Color(.systemGray5))
                        .padding(.vertical, 15)
                    
                    Text("오늘")
                        .foregroundColor(Color(uiColor: .systemGray4))
                        .padding(.bottom, 15)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250, height: 80)
                        .foregroundColor(Color(uiColor: .systemGray3))
                        .overlay(alignment : .bottomTrailing) {
                            Text("17:53")
                                .font(.caption2)
                                .foregroundColor(.gray)
                                .offset(x: 35)
                        }
                        .offset(x: -40)
                        .padding(.bottom, 20)
                    
                    
                    MessageCell(isRead: true, time: "17:54", messages: $messages)
                    MessageCell(isRead: false, time: "18:01", messages: $messages)
                    
                    ForEach(messages) { cell in
                        MessageCell(isRead: cell.isRead, time: cell.time, messages: $messages)
                    }
                    
                }
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 355, height: 50)
                .foregroundColor(Color(uiColor: .systemGray5))
                .overlay {
                    HStack {
                        Button {} label: {
                            Image(systemName: "photo")
                        }
                        
                        Button {} label: {
                            Text("</>")
                        }
                        
                        TextField("쪽지 작성", text: $messageField)
                        
                        Button {
                            messages.append(Message(isRead: false, time: getStringDate()))
                            messageField = ""
                        } label: {
                            Image(systemName: "arrowtriangle.right.fill")
                        }
                        .disabled(messageField.isEmpty)
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal, 20)
                }
        }
        .padding(.horizontal, 20)
    }
    private func getStringDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "HH:mm"
        let dateAt = Date()
        return dateFormatter.string(from: dateAt)
    }
        
}





// MARK: -View :
struct MessageCell : View {
    
    let isRead : Bool
    let time : String
    @State var showingAlert : Bool = false
    @Binding var messages : [Message]
    
    var body : some View {
        HStack(alignment: .bottom, spacing: 5) {
            Spacer()
            VStack(alignment: .trailing) {
                Text(isRead ? "5분 전에 읽음" : "")
                Text(time)
                
            }
            .font(.caption2)
            .foregroundColor(.gray)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 80)
                .foregroundColor(.yellow)
                .contextMenu{
                    Button {} label: {
                        Text("수정하기")
                    }
                    Button {showingAlert.toggle()} label: {
                        Text("삭제하기")
                    }
                }
        }
        .padding(.bottom, 20)
        .alert("메세지 삭제", isPresented: $showingAlert) {
            Button("삭제", role: .destructive) {}
        } message: {
            Text("메세지를 삭제하면 상대방과 나 모두 이 메세지를 볼 수 없습니다. 삭제하시겠습니까?")
        }
            
    
    }
}

struct ChatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChatDetailView()
    }
}
