# APNsTutorial-iOS
🤨 Apple Push Notification service tutorial

- 단순히 순서를 따라서 가면 될 줄 알았는데 알아야할 것도 있었고 경우에 따라서 요구하는 파일도 달랐다. 그러니 천천히 읽어주시기 바랍니다.

- 먼저 어떤 서버 환경에서 푸쉬알림을 보내줄 건지 그렇다면 server provider 가 요구하는 파일은 무엇인지 알고 진행하기를 바랍니다.
---
p8(인증키) ,p12(인증서) 파일 모두 만드는 방법을 정리했다. APNs 키는(p8) 계정당 2개까지만 만들 수 있어서 나는 못만들어봤고 출처를 참고했다. 

(참고로 p8(인증키)은 인증갱신을 하지 않아도 되기 때문에 p12(인증서)보다 선호한다. 파이어베이스에서는 둘 다 지원한다.)

이해를 완벽하게 하지 않더라도 아래의 글을 먼저 읽어보는 걸 추천한다.

[[iOS] provider server와 APNs의 안전한 연결을 위한 두가지 방법](https://sujinnaljin.medium.com/provider-server와-apns의-안전한-연결을-위한-두가지-방법-bb82d60ea7c8)


❗️이제 푸쉬알림을 사용하기 위한 과정을 알아보자
# Apple Push Notification service (APNs) 설정하기

APNs 란? iOS 에서 지원하는 푸쉬알림이다. 

## 1. CSR 발급

> CSR (Certificate Signing Request : 인증서 서명 요청)

- 키체인을 연다. 키체인 접근 - 인증서 지원 - 인증 기관에서 인증서 요청

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122346284-be947d80-cf83-11eb-8f8d-86fb0b973ac7.png"></p>

- 이메일 주소와 일반 이름을 입력해주고 요청항목을 디스크에 저장됨 이라고 체크해준다.

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122346344-d0762080-cf83-11eb-8b74-7dc60ec7eeaf.png"></p>

- 계속 진행하면 된다.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122346566-0e734480-cf84-11eb-862f-50984dd65ee5.png" width ="150"></p>

CertificateSigningRequest.certSigningRequest 명으로 파일이 생성된다.

## 2. App ID 등록 및 Push Notification 활성화

[Apple Developer](https://developer.apple.com)

apple developer 홈페이지에 접속.

(Account ➡️  Certificates, IDs & Profiles ➡️  Identifiers)

- Identifiers 등록

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122343478-b5ee7800-cf80-11eb-951f-154ea77f3f7a.png"></p>

- App IDs 선택

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343591-d3bbdd00-cf80-11eb-8aa0-491802ba9a91.png" width = "600"></p>

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343712-f817b980-cf80-11eb-8ad5-5581d1920bc4.png" width = "600"></p>

- Register an App ID

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343875-24cbd100-cf81-11eb-8f5b-a4663c8da6dd.png" width ="600"></p>

Bundle ID 는 프로젝트에서 확인 할 수 있습니다!

- 하단에 Push Notifications 선택

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343945-37460a80-cf81-11eb-8ee3-da0a9e72f452.png" width ="300"></p>

그리고 만들어진 App ID 를 확인하면 됩니다.

## A. p12 인증서 만들기

p8 인증키를 만들려면 B 로 가면 된다.

### A-1. Certificates 생성

- 아까 만든 Identifier 를 선택해서 하단의 Push Notification 에서 configure 를 클릭한다.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346833-5eeaa200-cf84-11eb-9c66-0b78f95d1570.png" width = "300"></p>

- 용도에 맞게 인증서를 생성하면 된다. (파이어베이스에서는 Development 와 Production 모두 요구한다.)

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346895-6c079100-cf84-11eb-8ddc-5f30adc63101.png" width = "600"></p>

- 아까 만들어둔 CSR 파일을 업로드한다.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346932-76298f80-cf84-11eb-9dc6-0de9c05d12a5.png" width = "600"></p>

- 생성한 인증서를 다운로드해준다.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346998-86da0580-cf84-11eb-954d-490f15d2f73c.png" width ="600></p>


<p align="center"><img width="150" src="https://user-images.githubusercontent.com/69136340/122347045-948f8b00-cf84-11eb-9f91-733a5402d250.png"></p>

확인)

그러면 Account ➡️  Certificates, IDs & Profiles ➡️  Certificates 에서 생성한 인증서를 확인할 수 있다.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344527-dbc84c80-cf81-11eb-94d1-b7c92ef92d8c.png" width ="700"></p>

### A-2. Certificate 를 키체인에 등록하기

- 다운로드받은 aps_development.cer 파일을 더블클릭해서 키체인에 등록해준다.

(이때 키도 같이 등록되는데 한번만 등록 할 수 있는 듯 하다. 궁금해서 키체인에서 삭제해봤는데 키는 등록이 안된다. identifier 를 새로 등록해주고 인증서도 다시 만들자 등록 할 수 있었다.)

(일부 글에서 p8 파일을 만들기 위해서 apple developer 에서 key 를 등록해주는데 그때만 다운로드가 가능했다. p12 파일에 대해서 키는 이때만 등록가능한 것 같다.)

### A-3. p12 파일 생성

우리가 Push Notification 을 받기 위해선  **pem** 형태의 인증서가 필요하다.(경우에 따라서는 p12 형태의 파일만 요구되기도 한다.) 그렇기 위해서 먼저 p12 형태의 파일을 만들어야 하는데, 이 p12 파일을 생성하기 위해선 **아까 키체인에 등록했던** **인증서**와 **키**가 필요하다.

- 키체인을 등록할 때 로컬항목에 지정해두었다면 기본키체인 - 로그인 - 인증서 에서 인증서와 개인키를 확인 할 수 있다.
- 인증서와 개인키 두개모두 선택하고 내보내기한다.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344577-e97dd200-cf81-11eb-99af-33a9113593cf.png" width ="400"></p>

- .p12 파일로 설정하고 저장해준다.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344676-01edec80-cf82-11eb-8a33-4102c480a9c4.png" width ="400"></p>

- 암호를 입력해주는데 나중에도 필요하다 기억해두자.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344726-0fa37200-cf82-11eb-882a-c78787b2e267.png" width = "400"></p>

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344789-1f22bb00-cf82-11eb-80e5-cba981ed5f99.png" width = "150"></p>

*provider server 에 인증서와 개인 키를 모두 설치해야하는데, 서버 개발환경에 따라 전달할 파일이 달라진다고 한다. php 서버에는 .pem 을 전달해야하고, 나머지는 .p12 만 전달해도 되는 경우가 있는 듯하다.

firebase 같은경우는 두가지 지원한다.

참고) pem 파일이 요구된다면 아래 주소를 참조해서 통해서 만들어주면 된다.

[https://babbab2.tistory.com/57](https://babbab2.tistory.com/57)

## B. p8 인증키 만들기

위의 App ID 등록 방법과 똑같이 해주고 다른점은 Development 와 Production certificates 만 만들지 않으면 된다. 왜냐면 우린 인증서가 아닌 인증키를 사용할거니까.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344451-c7844f80-cf81-11eb-9c1a-27f894553a90.png" width = "700"></p>

<p align="center"><img width="700" alt="스크린샷 2021-06-17 오후 2 32 49" src="https://user-images.githubusercontent.com/69136340/122344414-bcc9ba80-cf81-11eb-9b0a-b2fe1a7a9a9b.png"></p>

<p align="center"><img width="700" alt="스크린샷 2021-06-17 오후 2 33 04" src="https://user-images.githubusercontent.com/69136340/122344343-a7ed2700-cf81-11eb-94b3-1280f9bc32ed.png"></p>

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122344317-a28fdc80-cf81-11eb-9aa8-e9a39c82f827.png" width ="700"></p>

노란색 경고처럼 한번만 다운로드 가능하다.

**그 다음은 파이어베이스에서 p8 파일을 인증키로 등록해주면 된다.**

**출처**

[[React Native] 🔥 Firebase 로 푸쉬 알림 구현하기 - (2) iOS 앱에서 푸시 알림 띄우기!](https://velog.io/@mayinjanuary/React-Native-Firebase-로-푸쉬-알림-구현하기-2-IOS-앱-세팅하기)

## 3. 프로젝트에서 iOS  Push Notification, Backgrounds Mode 활성화

- 자신의 iPhone 에서 돌릴 경우에 해당 개발자계정과 device 를 설정한다.
- Signing & Capabilities 탭에서 +Capability 를 선택해서 Push Notifications 를 추가한다.

<p align="center"><img width="400" src="https://user-images.githubusercontent.com/69136340/122344141-65c3e580-cf81-11eb-8f24-a94d1a176667.png"></p>

- 같은 방법으로 Background Modes 도 추가하고 Background fetch 와 Remote notifications 를 설정한다.

<p align="center"><img width="400" alt="스크린샷 2021-06-16 오후 9 33 58" src="https://user-images.githubusercontent.com/69136340/122344205-7a07e280-cf81-11eb-90c9-9505c0b31fcf.png"></p>

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344225-855b0e00-cf81-11eb-9359-a734978001d0.png" width = "300"></p>

## 4. firebase 에서 푸시 알림을 구현한다면?

- p8 키를 쓰는 예시. 인증키는 1년마다 갱신하지 않아도 되기 때문에 보통 p8 를 쓰는 예시가 많았다.

[https://velog.io/@mayinjanuary/React-Native-Firebase-로-푸쉬-알림-구현하기-2-IOS-앱-세팅하기](https://velog.io/@mayinjanuary/React-Native-Firebase-%EB%A1%9C-%ED%91%B8%EC%89%AC-%EC%95%8C%EB%A6%BC-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0-2-IOS-%EC%95%B1-%EC%84%B8%ED%8C%85%ED%95%98%EA%B8%B0)

- p12 인증서를 쓰는 예시. 인증서는 1년마다 갱신해야 한다.

[https://faith-developer.tistory.com/156](https://faith-developer.tistory.com/156)
