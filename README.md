# [π GitSpace](https://gitspace.tistory.com/)

---

<img src="https://img.shields.io/badge/Swift-F05138?style=flat&logo=swift&logoColor=white"/>

<img src="https://img.shields.io/badge/SwiftUI-0D0D0D?style=flat&logo=swift&logoColor=blue"/>

<hr>

## β¨ μ± μκ°(ADS)

- μ¬μ©μκ° μ€νν λ ν¬μ§ν λ¦¬λ₯Ό κ΄λ¦¬νκ³  κ·Έ λ ν¬μ§ν λ¦¬μ κΈ°μ¬μμ μμ λ‘­κ² λ€νΈμνΉνκ³  μν΅ν  μ μλ μ±μλλ€.

---

### ππ»ββοΈ νλ₯΄μλ
1. μ€νν λ ν¬μ§ν λ¦¬μ κ΄μ¬ λ ν¬μ§ν λ¦¬μ νκ·Έλ₯Ό λ¬μ κ΄λ¦¬νκ³  μΆμ μ¬μ©μ.
2. λ ν¬μ§ν λ¦¬μ κΈ°μ¬μμ μμ λ‘­κ² μν΅νκ³  μΆμ μ¬μ©μ.
3. μ¬λ¬ μ¬λλ€μ νν¬ μ§λ¬Έμ΄λ κΆκΈμ¦μ λμμ£Όκ³  λ λ§μ μν₯λ ₯μ νμ¬νκ³  μΆμ κ°λ°μ.

---

### πͺ’ μ± λμμΈ μμ€ν
```Swift
// MARK: - GitSpace λ²νΌ
let gsButton = GSButton.CustomButtonView(
    style: GSButtonStyle,
    action: @escaping () -> Void,
    @ViewBuilder label: () -> CustomLabelType) {
        self.style = style
        self.action = action
        self.label = label()
}

// MARK: - GitSpace νμ€νΈμλν°
let gsTextEditor = GSTextEditor.CustomTextEditorView(
    style: GSTextEditorStyle,
    text: Binding<String>,
    font: Font = .body,
    lineSpace: CGFloat = 2) {
        self.style = style
        self.text = text
        self.font = font
        self.lineSpace = lineSpace
}

// MARK: - GitSpace νμ€νΈνλ
let gsTextField = GSTextField.CustomTextFieldView(
    style: GSTextFieldStyle,
    text: Binding<String>) {
        self.style = style
        self.text = text
}

// MARK: - GitSpace μΊλ²μ€(λνμ§)
let gsCanvas = GSCanvas.CustomCanvasViewinit(
    style: GSCanvasStyle,
    @ViewBuilder content: () -> Content) {
        self.style = style
        self.content = content()
}

// MARK: - GitSpace λ€λΉκ²μ΄μλ§ν¬
let gsNavigationLink = GSNavigationLink(
    style: Constant.LabelHierarchy,
    destination: @escaping () -> Destination,
    label: @escaping () -> Label) {
        self.style = style
        self.destination = destination()
        self.label = label()
}

// MARK: - GitSpace νμ€νΈ
let gsText = GStext.CustomTextView(
    style: GSTextStyle,
    string: String) {
        self.style = style
        self.string = string
}

// MARK: - GitSpace μ»€μ€νν­λ°
let gsTabBar = GSTabBarBackGround.CustomTabBarBackgroundView(
    style: GSTabBarBackGroundStyle,
    @ViewBuilder content: () -> Content) {
        self.style = style
        self.content = content()
}
```

- [GitSpace λμμΈ μμ€ν λμκΈ° λ³΄λ¬κ°κΈ°](https://github.com/APPSCHOOL1-REPO/finalproject-gitspace/blob/main/docs/tech/DesignSystem/DesignSystem.md)

---
## π μ±μ κΈ°λ₯κ³Ό μ­ν 

- μ¬μ©μκ° μ€ννλ λ ν¬μ§ν λ¦¬λ₯Ό κ΄λ¦¬νκ³  κΈ°λ‘ν  μ μμ΅λλ€.
- λ²μ κ΄λ¦¬ μ¨λΌμΈ μλΉμ€λ₯Ό μ΄μ©νλ μ¬μ©μλ€μ μμ λ‘μ΄ λ€νΈμνΉμ κ°λ₯νκ² ν©λλ€.
- νλ‘μ°νκ±°λ μ¬μ©μκ° Star ν λ€λ₯Έ μ¬μ©μμκ² Knock Messageλ₯Ό λ°μ νκ³ , λνλ₯Ό μμν  μ μμ΅λλ€.
- κ°λ°μμ νλ νΌλλ₯Ό λ³΄κ³  μμ λ‘­κ² λνλ₯Ό μμν  μ μμ΅λλ€.

---

## ππ» νμ μκ°
|<img src = "https://emojis.slackmojis.com/emojis/images/1643514229/1971/coin.gif?1643514229" width=23>[ μ΄μΉμ€ ] <br/><img src="https://emojis.slackmojis.com/emojis/images/1643514058/149/sonic.gif?1643514058" width = 23>[@valselee](https://github.com/valselee)<br/> "Routerλ₯Ό μ«μ΄νλ μ¬λ" | <img src = "https://emojis.slackmojis.com/emojis/images/1673874371/63572/lick.gif?1673874371" width=23>[ μ΄λ€ν ]<br/> [@dahae0320](https://github.com/dahae0320)<br/> "μ~ λ§μλ€~ <br> λ§νΈ, λ€λμ€μ¨μ΄μ?" | <img src = "https://emojis.slackmojis.com/emojis/images/1643514093/516/success.png?1643514093" width =23 > [ λ°μ κ·  ]<br/> [@jekyun-park](https://github.com/jekyun-park)<br/> "GitSpaceλ *μ κ΅΄λ§¨*μ΄ <br> μ²λ¦¬νμΌλ μμ¬νλΌκ΅¬!" | <img src="https://w.namu.la/s/fb074c9e538edb0b41d818df3cb7b5499a844aeb5e8becc3ce1664468c885d883e8a8243a33eefc11e107b8d7dbbf77a410d78675770117a6654984ebe73f2f2c57b51e971c1d096c921c08fab7bde1ed05ce094bf3b66dceac4ef96241618d36a3fb85ded8137bb659c8cf4da5f6930">[[ μνμ ]<img src="http://play.pokemonshowdown.com/sprites/xyani/emolga.gif" width=30><br/>[@wontaeyoung](https://github.com/wontaeyoung)<br/> "GitSpace μ€ν¬λ‘€ λ΄λΉμΌμ§(ν¬λ§)"  |
| :----------------------------------------------------------: | :---------------------------------------------: | :------: | :-------------------------------------------------: |
|<img src="https://avatars.githubusercontent.com/u/82270058?s=400&u=d173a9de9f19095cfb073a24b62cdfc56154f39d&v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/50159740?v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/19788294?v=4" width=200>  | <img src="https://avatars.githubusercontent.com/u/45925685?v=4" width=200> |

| <img src = "https://emojis.slackmojis.com/emojis/images/1653892844/59427/gull_scream.gif?1653892844" width=25>[ μ μμ¬ ]<br/>[@yeseul321](https://github.com/yeseul321)<br/> "νΈλ°κ³ κ΅¬λ§!!!" |<img src="https://emojis.slackmojis.com/emojis/images/1643515251/12725/venting.gif?1643515251" width=30>[ μ΅ννΈ ]<br/> [@guguhanogu](https://github.com/guguhanogu)<br/> "??? : λ­ νλ €μ?"<br/><img src="https://emojis.slackmojis.com/emojis/images/1643514442/4239/blob-hearts.gif?1643514442" width=30>"λ λ§μ?"  | <img src = "https://user-images.githubusercontent.com/89244357/213121687-472df966-693a-4dad-bff4-a2129da89cc4.gif" width=25> [ μ΅μμ ]<br/> [@lianne-b](https://github.com/lianne-b)<br/> "μ¬μ₯λ μ€λλ μΌκ·Όμ΄λΌκ΅¬μ?" |
|:-----------------------------------------------------------: | :-----------------------------------------------------------: | :-----------------------------------------------------------: | 
|<img src="https://avatars.githubusercontent.com/u/71593182?v=4" width=200> |<img src="https://avatars.githubusercontent.com/u/64696968?v=4" width=200>  |<img src="https://avatars.githubusercontent.com/u/89244357?v=4" width=200> |

---
## π¨ μ± μ΄λ―Έμ§

| Home(login) | Home(Star) | Home(Activity) |
| :--------: | :--------: | :--------: |
| ![](https://i.imgur.com/pKlkB7W.png)|![](https://i.imgur.com/YxedwZd.png) | ![](https://i.imgur.com/neCUJwj.png) |

| Chat | Chat(A) | Chat(B) |
| :--------: | :--------: | :--------: |
| ![](https://i.imgur.com/KMGsYU6.png) | ![](https://i.imgur.com/fc0HfiZ.png) | ![](https://i.imgur.com/f8sDOY0.png) |

| Knock | Knock(A) | Knock(B) |
| :--------: | :--------: | :--------: |
| ![](https://i.imgur.com/XfaFmDV.png) | ![](https://i.imgur.com/bavYMqD.png)| ![](https://i.imgur.com/mKBhCHn.png) |


| Profile | Push Notification(A) | Push Notification(B) |
|  :--------: |  :--------: |  :--------: |
| ![](https://i.imgur.com/Iz4QhT2.png) | ![](https://i.imgur.com/yJ0r5hO.jpg)  |![](https://i.imgur.com/eE75gG2.png) |


---

## πΈ μ£Όμ κΈ°λ₯

- ` Star ` κΉν μ€ν λ ν¬ κ΄λ¦¬
- ` Activity ` νλ‘μ°ν μ μ λ€μ νλ λ³΄κΈ°
- ` Knock `  Knock νμ¬ μ±ν νκ³  μΆμ μ μ μκ² μ±ν μμ²­
- ` Chat `  Starν λ ν¬μ μ μ λ€, μΆμ² μ μ λ€κ³Όμ μ±ν

---
## οΌ Commit Convention
```
- [Feat] μλ‘μ΄ κΈ°λ₯ κ΅¬ν
- [Chore] μ½λ μμ , λ΄λΆ νμΌ μμ , μ£Όμ
- [Add] Feat μ΄μΈμ λΆμμ μΈ μ½λ μΆκ°, λΌμ΄λΈλ¬λ¦¬ μΆκ°, μλ‘μ΄ νμΌ μμ± μ, μμ μΆκ°
- [Fix] λ²κ·Έ, μ€λ₯ ν΄κ²°
- [Delete] μΈλͺ¨μλ μ½λ μ­μ 
- [Move] νμΌ μ΄λ¦/μμΉ λ³κ²½
- [Update] λ²μ  μλ°μ΄νΈ
```

---
## οΌ Branch Convention
```mermaid
gitGraph
    commit id: "MAIN"
    branch dev
    checkout dev
    commit id: "Dev"
    branch Feature/issueNumber
    checkout Feature/issueNumber
    commit id: "${name}-${taskA}"
    commit id: "${name}-${taskB}"
    checkout dev
    merge Feature/issueNumber
    commit
    commit
    checkout main
    merge dev
    commit id: "Deploy"
    
    
```

---

## π¦ μ± κ°λ° λ° λ°°ν¬ νκ²½

- Xcode Version 14.1 (14B47b)
- SwiftUI, iOS 15.0
- iPhone 14 Pro, iPhone 14 Pro + μμ μ΅μ νλ¨

---

## ππ» μ¬μ© κ°μ΄λ λ° μλλ¦¬μ€

<!--- UXνΌλλ°± λ°μλ νμν κ°μ΄λλ₯Ό μμ±ν΄μ£ΌμΈμ --->

**μ¬μ©μ μΈμ¦**

1. λ‘κ·ΈμΈ/νμκ°μ
    - GitHub κ³μ μ ν΅ν΄ λ‘κ·ΈμΈμ΄ κ°λ₯ν©λλ€.
    - GitHub κ³μ μ΄ μλ€λ©΄, GitHub νμκ°μ ν λ‘κ·ΈμΈμ μ§νν΄ μ£ΌμΈμ.

**λ©μΈ κΈ°λ₯**

> μ¬μ©μ μΈμ¦μ΄ λκ³  λλ©΄ μ±μ λ©μΈ νλ©΄μΌλ‘ μ§μν©λλ€.

1. `Tab 1` μ€ν (Starred, Activity)
    - **Starred View** (Page 1, Main)
        - μ¬μ©μμ κΉνλΈ Starred Repository λͺ©λ‘μ λ³Ό μ μλ€.
        - μ¬μ©μλ Starred Repositoryλ₯Ό ` Tag `λ‘ κ΄λ¦¬ν  μ μλ€.
        - μλ¨μ ββ¦β λ²νΌμ ν­νμ¬ νν°λ§νκ³  μΆμ Tagλ₯Ό μ ννκ±°λ, μλ‘­κ² μΆκ°ν  μ μλ€.
        - μνλ Tagλ₯Ό μ ννλ©΄, Starred Viewμλ μ νλ Tagλ₯Ό κ°μ§ Starred Repositoryλ§ λ³΄μ¬μ§λ€.
        - Starred Repository λ¦¬μ€νΈ μμ μλ νν λ²νΌ(λ©μΈμ§ μμ΄μ½)μ ν­νλ©΄ ν΄λΉ Repositoryμ Contributorλ€μκ² λΈν¬ λ©μΈμ§λ₯Ό λ³΄λΌ μ μλ€.
        - Starred Repository λ¦¬μ€νΈ μμ μλ ββ¦β λ²νΌμ ν­νλ©΄ ν΄λΉ Repositoryμ κ΄λ ¨λ μμ(λΈν¬νκΈ°, κ³΅μ νκΈ°, νκ·Έ μμ )μ ν  μ μλ€.
    - **Activity View** (Page 2, Main)
        - μ¬μ©μκ° νλ‘μ°μ€μΈ κΉνλΈ μ μ λ€μ νλμ λ³Ό μ μλ€.
        - νλ‘μ°μ€μΈ κΉνλΈ μ μ μ Circle Imageλ₯Ό ν­νλ©΄ ν΄λΉ μ μ μ νλ‘νμ λ³΄μ¬μ£Όλ νλ©΄μΌλ‘ μ΄λνλ€.
        - νλ‘μ°μ€μΈ κΉνλΈ μ μ μ starred νλ νμ€νΈλ₯Ό ν­νλ©΄ ν΄λΉ λ ν¬μ§ν λ¦¬μ μμΈμ λ³΄λ₯Ό λ³΄μ¬μ£Όλ νλ©΄μΌλ‘ μ΄λνλ€.
        - μ°μΈ‘ μλ¨μ ββ¦β λ²νΌμ λλ₯΄λ©΄ ν΄λΉ μ μ  λ° ν΄λΉ λ ν¬μ§ν λ¦¬μ κ΄λ ¨λ μ‘μμ μνν  μ μλ€.
    - **Repository Detail View**
        - μ¬μ©μκ° μ νν κΉνλΈ λ ν¬μ μ€λͺ, contributors, μ°ν μ€νμ κ°μ λ±, μμΈ μ λ³΄λ₯Ό νμΈν  μ μλ€.
        - Contributors μλ νλ‘ν μ¬μ§μ ν­νλ©΄ ν΄λΉ μ μ μ νλ‘νμ λ³΄μ¬μ£Όλ νλ©΄μΌλ‘ μ΄λνλ€.
        - My Tags μλμ λ΄κ° ν΄λΉ λ ν¬μ λΆμ¬ν νκ·Έκ° λνλλλ°, "+"λ²νΌμ λλ₯΄λ©΄ νκ·Έλ₯Ό μ ννκ³  μλ‘μ΄ νκ·Έλ₯Ό μΆκ°ν  μ μλ€
        - μ°μΈ‘ μλ¨μ π? μ΄λͺ¨μ§λ₯Ό λλ₯΄λ©΄ ννμ μμ²­ν  μ μλ νμ¬ λ ν¬μ contributors λͺ©λ‘μ΄ λνλλ€. μ΄ μ€ ν λͺμ μ νν΄ ν­νλ©΄ νν μμ²­ νλ©΄μΌλ‘ λμ΄κ°λ€. 

2. `Tab 2` μ±ν (Chats)
    - **Penpal List View**
        - μ¬μ©μμ νμ±νλ νν λ¦¬μ€νΈμ νν μΆμ², KnockBoxλ₯Ό λ³Ό μ μλ€.
        - νν λ¦¬μ€νΈμ νν μμ ν­νλ©΄ ν΄λΉ ννμ μ±ν λ΄μ­μ λ³Ό μ μλ€.
        - μλ¨μ π¦ μ΄λͺ¨μ§λ₯Ό ν­νλ©΄ KnockBoxλ‘ μ΄λνμ¬ μ§κΈκΉμ§ λ°μ λΈν¬μ λ³΄λΈ λΈν¬λ₯Ό νμΈν  μ μλ€.
        - νν μΆμ²μ νλ‘νμ ν΄λ¦­νλ©΄ ν΄λΉ ννμ μ λ³΄λ₯Ό νμΈν  μ μλ€.
        - νν μΆμ² μμ `Knock` λ²νΌμ ν­νλ©΄ ν΄λΉ ννμκ² λ³΄λΌ λΈν¬ λ©μμ§λ₯Ό μμ±ν  μ μλ€.
    - **Penpal Knock Fullscreen Cover**
        - νΉμ  μΈμμκ² λΈν¬ λ©μμ§λ₯Ό λ³΄λΌ μ μλ€.
        - λΈν¬ λ©μΈμ§λ ννμ μμνκΈ° μ , μλλ°©μκ² κ±΄λ€λ μλΆμΈμ¬ λ° μ²« μΈμ¬μ΄λ€,
        - **μ¬μ©μλ μ±μ΄ μ κ³΅νλ κΈ°λ³Έ λ©μμ§λ₯Ό μ¬μ©νκ±°λ μ§μ  μΈμ¬λ§μ μμ±ν  μ μλ€.**
        - Penpal Knock Fullscreen Coverμ μλ¨ λ²νΌμ ν­νλ©΄ μνλ μΈμμκ² λΈν¬ λ©μμ§λ₯Ό λ³΄λΌ μ μλ€.
    - **Penpal Chat Detail View**
        - μ€ν¬λ‘€ λ·° μλ¨μμ λν μλμ λν κ°λ΅ν μ λ³΄λ₯Ό λ³Ό μ μλ€.
        - μλ νλ‘ν μ΄λ―Έμ§ νΉμ μμ΄λλ₯Ό ν­νλ©΄ μλ νλ‘νλ‘ μ΄λν  μ μλ€.
        - μ€ν¬λ‘€ λ·°μμ λν λ΄μ© λ©μΈμ§λ€μ νμΈν  μ μλ€.
        - νλ¨ νμ€νΈνλμ λ©μΈμ§λ₯Ό μλ ₯νκ³  μ°μΈ‘ λ²νΌμ ν­νλ©΄ λ©μΈμ§λ₯Ό μ μ‘ν  μ μλ€.
        - λ©μΈμ§ μμ Long Tap Gestureλ₯Ό ν΅ν΄ Context Menuλ₯Ό νμν  μ μλ€.
            - μμ νκΈ°λ₯Ό ν΅ν΄ κΈ°μ‘΄ λ©μΈμ§λ₯Ό λ€λ₯Έ λ΄μ©μΌλ‘ μμ ν  μ μλ€.
            - μ­μ νκΈ°λ₯Ό ν΅ν΄ κΈ°μ‘΄ λ©μΈμ§λ₯Ό μ­μ ν  μ μλ€.
        - μλ¨ ν΄λ° μ°μΈ‘ Ellipsis λ²νΌμ ν­νλ©΄ μ±νλ°©κ³Ό μ±ν μλμ λν μ€μ  νλ©΄μΌλ‘ λ§ν¬λλ€.
    - **Penpal Info View**
        - μλμ νλ‘ν μ΄λ―Έμ§μ μμ΄λλ₯Ό νμΈν  μ μλ€.
        - ν΄λΉ μ±νλ°©μ λν μλ¦Ό μ€μ μ ν κΈν  μ μλ€.
        - λν μλλ°©μΌλ‘λΆν° λ©μΈμ§λ₯Ό λ°μ§ μλλ‘ μ°¨λ¨ νΉμ ν΄μ ν  μ μλ€.
        - ν΄λΉ μ±νλ°©μ λͺ¨λ  λν λ΄μ©μ μ­μ ν  μ μλ€.

    - **My Knock Box View**
        - **Penpal List View**μμ π¦ μ΄λͺ¨μ§λ₯Ό ν­νμ¬ μ΄λλ **KnockBox View**.
        - μμ²­λ°μ Knockλ€μ νν©μ λ³Ό μ μλ€.
        - κ° Knockλ 3κ°μ μνλ‘ λΆλ₯λλ€.
            - λκΈ°μ€: Waiting
            - μΉμΈλ¨: Accepted
            - κ±°μ λ¨: Declined
        - λκΈ°μ€μΈ Knockλ μ΅μλ¨μΌλ‘ 
        
3. `Tab 3` λΈν¬ (Knocks)
      - **Main Profile View**
          - λ‘κ·ΈμΈλ μ¬μ©μ λ³ΈμΈμ κΈ°λ³Έμ λ³΄κ° λ΄κΈ΄ νλ‘νμ λ³Ό μ μλ€.
          - ν΄λ°μμ μ€μ  λ²νΌμ λλ₯΄λ©΄ μλ¦Όμ€μ , κ³μ  μ€μ  λ±μ ν  μ μλ λ·°λ‘ μ΄λνλ€.
      - **Profile Setting View**
          - μλ¦Όμ€μ , λΌμ΄μΌμ€, κ°λ°μ§, κ³μ μ€μ (λ‘κ·Έμμ, μ°λ λκΈ°), κ°μΈμ λ³΄λ³΄νΈλ²κ· λ±μ μ λ³΄λ₯Ό νμΈν  μ μλ€.
    
4. `Tab 3` λ΄ μ λ³΄ (MyProfile)
      - **Main Profile View**
          - λ‘κ·ΈμΈλ μ¬μ©μ λ³ΈμΈμ κΈ°λ³Έμ λ³΄κ° λ΄κΈ΄ νλ‘νμ λ³Ό μ μλ€.
          - ν΄λ°μμ μ€μ  λ²νΌμ λλ₯΄λ©΄ μλ¦Όμ€μ , κ³μ  μ€μ  λ±μ ν  μ μλ λ·°λ‘ μ΄λνλ€.
      - **Profile Setting View**
          - μλ¦Όμ€μ , λΌμ΄μΌμ€, κ°λ°μ§, κ³μ μ€μ (λ‘κ·Έμμ, μ°λ λκΈ°), κ°μΈμ λ³΄λ³΄νΈλ²κ· λ±μ μ λ³΄λ₯Ό νμΈν  μ μλ€.

5. `anywhere` ν­μ μκ΄ μμ΄ μ΄λμλ μ κ·Όνκ² λλ λ·°
     - **Profile Detail View**
          - λ€λ₯Έ μ¬λμ νλ‘νμ νμΈ ν  μ μλ€. μ΄λ―Έμ§, μ΄λ¦, μμ΄λ μ κ·Έ μΈ κ³μ μ£Όκ° μ€μ ν μ λ³΄λ€ (κΉν νμ΄μ§μμ νμΈν  μ μλ μ λ³΄λ€)μ λ³Ό μ μλ€.
          - νλ‘ν μ λ³΄ λ°μ μλ νλ‘μ° λ²νΌμ ν΄λ¦­νλ©΄ μλλ°© κ³μ μ νλ‘μ° νλ μνλ‘ λ°λκ³  μ΄λ―Έ νλ‘μ° μ€μ΄λΌλ©΄ Unfollow λ²νΌμΌλ‘ λ³΄μΈλ€.
          - Knock λ²νΌμ λλ₯΄λ©΄ μλμκ² μ±νμ λ³΄λ΄κΈ° μ  λΈν¬ λ©μμ§λ₯Ό λ³΄λΌ μ μλ Penpal Knock Fullscreen Coverλ‘ μ΄λνλ€.
     - **Guide Center View**
          - GitSpaceμ μ¬λ¬ κΈ°λ₯λ€μ λν κ°μ΄λ λΌμΈμ΄ μ νμλ GitSpaceλ₯Ό μ¬ννλ νμΉνμ΄μ»€λ€μ μν μλ΄μ μΌλͺ, Guide Centerλ€.
          - λ©μΈνλ©΄μμλ Star / Tagging / Knock / Chat / Block / Report λ± κ° κΈ°λ₯λ€μ΄ λ¦¬μ€νΈλ‘ λ³΄μ¬μ§λ€.
          - λ¦¬μ€νΈμ λͺ©λ‘μ ν­νλ©΄, ν΄λΉνλ κΈ°λ₯μ μ€λͺμ λ³Ό μ μλ€.
          - κ° κΈ°λ₯λ€μ λν μ€λͺμ νμν λ·° μ΄λμλ  λ³Ό μ μλλ‘ κ΅¬μ±λμ΄μμΌλ©°, νμν κ³³μμ fullScreenCoverλ‘ νΈμΆνλ©΄ λλ€.
          - νμ¬ Knock Guideλ§ μλ¬Ένκ° μ§νλμκ³ , λ€λ₯Έ κ°μ΄λλ€λ μλ¬Έν μμμ μ§νν  μμ .

## Libraries
- [Firebase](https://github.com/firebase/firebase-ios-sdk/blob/master/LICENSE)
- [SwiftUIFlowLayout](https://github.com/globulus/swiftui-flow-layout/blob/main/LICENSE)
- [RichText](https://github.com/NuPlay/RichText/blob/main/LICENSE)
- [Lottie-iOS](https://github.com/airbnb/lottie-ios/blob/master/LICENSE)
- [Github-Docs-RESTAPI](https://docs.github.com)
