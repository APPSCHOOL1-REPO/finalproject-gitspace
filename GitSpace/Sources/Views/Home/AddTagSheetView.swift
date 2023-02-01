//
//  AddTagSheetView.swift
//  GitSpace
//
//  Created by yeeunchoi on 2023/01/18.
//

import SwiftUI

struct AddTagSheetView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var selectedTags: [Tag]
    @State private var tagInput: String = ""
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 30)
                
                // MARK: - 새 태그 추가 섹션
                // 새 태그 추가 안내문
                Text("Add if you want new tags 💬")
                    .foregroundColor(Color(.systemGray))
                    .font(.callout)
                
                HStack {
                    TextField("tag name", text: $tagInput)
                        .textFieldStyle(.roundedBorder)
                    
                    // 태그 추가 버튼
                    Button {
                        if tagInput.trimmingCharacters(in: .whitespaces) != "" {
                            tagList.append( Tag(name: tagInput) )
                        }
                    } label: {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(5)
                    }
                }
                .padding(.bottom, 30)
                
                
                // MARK: - 태그 선택 섹션
                // 기존 태그 선택 안내문
                Text("Select tags from your tag list 🙌")
                    .foregroundColor(Color(.systemGray))
                    .font(.callout)
                
                HStack {
                    LazyVGrid(columns: columns) {
                        /* selectedTag에 있는 태그만 미리 선택된 채로 있어야 한다. */
                        ForEach(Array(tagList.enumerated()), id: \.offset) { index, tag in
                            Button {
                                if !tagList[index].isSelected { // 중복 추가 방지
                                    selectedTags.append(tag)
                                }
                                tagList[index].isSelected.toggle()
                            } label: {
                                Text(tag.name)
                                    .frame(width: 50)
                                    .padding(.vertical, 7)
                                    .padding(.horizontal, 13)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.black)
                                    )
                                    .font(.callout)
                                    .foregroundColor(tagList[index].isSelected ? .white : .black)
                                    .background(tagList[index].isSelected ? .black : .clear)
                                    .cornerRadius(20)
                                
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .navigationBarTitle("Knock Knock!", displayMode: .inline)
            .toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button {
						dismiss()
					} label: {
						Text("Cancel")
					}
				}
				
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                    }
                }
            }
        .padding(.horizontal, 30)
        }
    }
}

struct AddTagSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTagSheetView(selectedTags: .constant( [Tag(name: "MVVM")] ))
        }
    }
}
