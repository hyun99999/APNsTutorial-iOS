# APNsTutorial-iOS
๐คจ Apple Push Notification service tutorial

- ๋จ์ํ ์์๋ฅผ ๋ฐ๋ผ์ ๊ฐ๋ฉด ๋  ์ค ์์๋๋ฐ ์์์ผํ  ๊ฒ๋ ์์๊ณ  ๊ฒฝ์ฐ์ ๋ฐ๋ผ์ ์๊ตฌํ๋ ํ์ผ๋ ๋ฌ๋๋ค. ๊ทธ๋ฌ๋ ์ฒ์ฒํ ์ฝ์ด์ฃผ์๊ธฐ ๋ฐ๋๋๋ค.

- ๋จผ์  ์ด๋ค ์๋ฒ ํ๊ฒฝ์์ ํธ์ฌ์๋ฆผ์ ๋ณด๋ด์ค ๊ฑด์ง ๊ทธ๋ ๋ค๋ฉด server provider ๊ฐ ์๊ตฌํ๋ ํ์ผ์ ๋ฌด์์ธ์ง ์๊ณ  ์งํํ๊ธฐ๋ฅผ ๋ฐ๋๋๋ค.
---
p8(์ธ์ฆํค) ,p12(์ธ์ฆ์) ํ์ผ ๋ชจ๋ ๋ง๋๋ ๋ฐฉ๋ฒ์ ์ ๋ฆฌํ๋ค. APNs ํค๋(p8) ๊ณ์ ๋น 2๊ฐ๊น์ง๋ง ๋ง๋ค ์ ์์ด์ ๋๋ ๋ชป๋ง๋ค์ด๋ดค๊ณ  ์ถ์ฒ๋ฅผ ์ฐธ๊ณ ํ๋ค. 

(์ฐธ๊ณ ๋ก p8(์ธ์ฆํค)์ ์ธ์ฆ๊ฐฑ์ ์ ํ์ง ์์๋ ๋๊ธฐ ๋๋ฌธ์ p12(์ธ์ฆ์)๋ณด๋ค ์ ํธํ๋ค. ํ์ด์ด๋ฒ ์ด์ค์์๋ ๋ ๋ค ์ง์ํ๋ค.)

์ดํด๋ฅผ ์๋ฒฝํ๊ฒ ํ์ง ์๋๋ผ๋ ์๋์ ๊ธ์ ๋จผ์  ์ฝ์ด๋ณด๋ ๊ฑธ ์ถ์ฒํ๋ค.

[[iOS] provider server์ APNs์ ์์ ํ ์ฐ๊ฒฐ์ ์ํ ๋๊ฐ์ง ๋ฐฉ๋ฒ](https://sujinnaljin.medium.com/provider-server์-apns์-์์ ํ-์ฐ๊ฒฐ์-์ํ-๋๊ฐ์ง-๋ฐฉ๋ฒ-bb82d60ea7c8)


โ๏ธ์ด์  ํธ์ฌ์๋ฆผ์ ์ฌ์ฉํ๊ธฐ ์ํ ๊ณผ์ ์ ์์๋ณด์
# Apple Push Notification service (APNs) ์ค์ ํ๊ธฐ

APNs ๋? iOS ์์ ์ง์ํ๋ ํธ์ฌ์๋ฆผ์ด๋ค. 

## 1. CSR ๋ฐ๊ธ

> CSR (Certificate Signing Request : ์ธ์ฆ์ ์๋ช ์์ฒญ)

- ํค์ฒด์ธ์ ์ฐ๋ค. ํค์ฒด์ธ ์ ๊ทผ - ์ธ์ฆ์ ์ง์ - ์ธ์ฆ ๊ธฐ๊ด์์ ์ธ์ฆ์ ์์ฒญ

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122346284-be947d80-cf83-11eb-8f8d-86fb0b973ac7.png"></p>

- ์ด๋ฉ์ผ ์ฃผ์์ ์ผ๋ฐ ์ด๋ฆ์ ์๋ ฅํด์ฃผ๊ณ  ์์ฒญํญ๋ชฉ์ ๋์คํฌ์ ์ ์ฅ๋จ ์ด๋ผ๊ณ  ์ฒดํฌํด์ค๋ค.

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122346344-d0762080-cf83-11eb-8b74-7dc60ec7eeaf.png"></p>

- ๊ณ์ ์งํํ๋ฉด ๋๋ค.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122346566-0e734480-cf84-11eb-862f-50984dd65ee5.png" width ="150"></p>

CertificateSigningRequest.certSigningRequest ๋ช์ผ๋ก ํ์ผ์ด ์์ฑ๋๋ค.

## 2. App ID ๋ฑ๋ก ๋ฐ Push Notification ํ์ฑํ

[Apple Developer](https://developer.apple.com)

apple developer ํํ์ด์ง์ ์ ์.

(Account โก๏ธ  Certificates, IDs & Profiles โก๏ธ  Identifiers)

- Identifiers ๋ฑ๋ก

<p align="center"><img width = "400" src ="https://user-images.githubusercontent.com/69136340/122343478-b5ee7800-cf80-11eb-951f-154ea77f3f7a.png"></p>

- App IDs ์ ํ

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343591-d3bbdd00-cf80-11eb-8aa0-491802ba9a91.png" width = "600"></p>

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343712-f817b980-cf80-11eb-8ad5-5581d1920bc4.png" width = "600"></p>

- Register an App ID

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343875-24cbd100-cf81-11eb-8f5b-a4663c8da6dd.png" width ="600"></p>

Bundle ID ๋ ํ๋ก์ ํธ์์ ํ์ธ ํ  ์ ์์ต๋๋ค!

- ํ๋จ์ Push Notifications ์ ํ

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122343945-37460a80-cf81-11eb-8ee3-da0a9e72f452.png" width ="300"></p>

๊ทธ๋ฆฌ๊ณ  ๋ง๋ค์ด์ง App ID ๋ฅผ ํ์ธํ๋ฉด ๋ฉ๋๋ค.

## A. p12 ์ธ์ฆ์ ๋ง๋ค๊ธฐ

p8 ์ธ์ฆํค๋ฅผ ๋ง๋ค๋ ค๋ฉด B ๋ก ๊ฐ๋ฉด ๋๋ค.

### A-1. Certificates ์์ฑ

- ์๊น ๋ง๋  Identifier ๋ฅผ ์ ํํด์ ํ๋จ์ Push Notification ์์ configure ๋ฅผ ํด๋ฆญํ๋ค.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346833-5eeaa200-cf84-11eb-9c66-0b78f95d1570.png" width = "300"></p>

- ์ฉ๋์ ๋ง๊ฒ ์ธ์ฆ์๋ฅผ ์์ฑํ๋ฉด ๋๋ค. (ํ์ด์ด๋ฒ ์ด์ค์์๋ Development ์ Production ๋ชจ๋ ์๊ตฌํ๋ค.)

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346895-6c079100-cf84-11eb-8ddc-5f30adc63101.png" width = "600"></p>

- ์๊น ๋ง๋ค์ด๋ CSR ํ์ผ์ ์๋ก๋ํ๋ค.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346932-76298f80-cf84-11eb-9dc6-0de9c05d12a5.png" width = "600"></p>

- ์์ฑํ ์ธ์ฆ์๋ฅผ ๋ค์ด๋ก๋ํด์ค๋ค.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122346998-86da0580-cf84-11eb-954d-490f15d2f73c.png" width ="600></p>


<p align="center"><img width="150" src="https://user-images.githubusercontent.com/69136340/122347045-948f8b00-cf84-11eb-9f91-733a5402d250.png"></p>

ํ์ธ)

๊ทธ๋ฌ๋ฉด Account โก๏ธ  Certificates, IDs & Profiles โก๏ธ  Certificates ์์ ์์ฑํ ์ธ์ฆ์๋ฅผ ํ์ธํ  ์ ์๋ค.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344527-dbc84c80-cf81-11eb-94d1-b7c92ef92d8c.png" width ="700"></p>

### A-2. Certificate ๋ฅผ ํค์ฒด์ธ์ ๋ฑ๋กํ๊ธฐ

- ๋ค์ด๋ก๋๋ฐ์ aps_development.cer ํ์ผ์ ๋๋ธํด๋ฆญํด์ ํค์ฒด์ธ์ ๋ฑ๋กํด์ค๋ค.

(์ด๋ ํค๋ ๊ฐ์ด ๋ฑ๋ก๋๋๋ฐ ํ๋ฒ๋ง ๋ฑ๋ก ํ  ์ ์๋ ๋ฏ ํ๋ค. ๊ถ๊ธํด์ ํค์ฒด์ธ์์ ์ญ์ ํด๋ดค๋๋ฐ ํค๋ ๋ฑ๋ก์ด ์๋๋ค. identifier ๋ฅผ ์๋ก ๋ฑ๋กํด์ฃผ๊ณ  ์ธ์ฆ์๋ ๋ค์ ๋ง๋ค์ ๋ฑ๋ก ํ  ์ ์์๋ค.)

(์ผ๋ถ ๊ธ์์ p8 ํ์ผ์ ๋ง๋ค๊ธฐ ์ํด์ apple developer ์์ key ๋ฅผ ๋ฑ๋กํด์ฃผ๋๋ฐ ๊ทธ๋๋ง ๋ค์ด๋ก๋๊ฐ ๊ฐ๋ฅํ๋ค. p12 ํ์ผ์ ๋ํด์ ํค๋ ์ด๋๋ง ๋ฑ๋ก๊ฐ๋ฅํ ๊ฒ ๊ฐ๋ค.)

### A-3. p12 ํ์ผ ์์ฑ

์ฐ๋ฆฌ๊ฐ Push Notification ์ ๋ฐ๊ธฐ ์ํด์ ย ย **pem**ย ํํ์ ์ธ์ฆ์๊ฐ ํ์ํ๋ค.(๊ฒฝ์ฐ์ ๋ฐ๋ผ์๋ p12 ํํ์ ํ์ผ๋ง ์๊ตฌ๋๊ธฐ๋ ํ๋ค.) ๊ทธ๋ ๊ธฐ ์ํด์ ๋จผ์  p12 ํํ์ ํ์ผ์ ๋ง๋ค์ด์ผ ํ๋๋ฐ, ์ด p12 ํ์ผ์ ์์ฑํ๊ธฐ ์ํด์ ย **์๊น ํค์ฒด์ธ์ ๋ฑ๋กํ๋**ย **์ธ์ฆ์**์ย **ํค**๊ฐ ํ์ํ๋ค.

- ํค์ฒด์ธ์ ๋ฑ๋กํ  ๋ ๋ก์ปฌํญ๋ชฉ์ ์ง์ ํด๋์๋ค๋ฉด ๊ธฐ๋ณธํค์ฒด์ธ - ๋ก๊ทธ์ธ - ์ธ์ฆ์ ์์ ์ธ์ฆ์์ ๊ฐ์ธํค๋ฅผ ํ์ธ ํ  ์ ์๋ค.
- ์ธ์ฆ์์ ๊ฐ์ธํค ๋๊ฐ๋ชจ๋ ์ ํํ๊ณ  ๋ด๋ณด๋ด๊ธฐํ๋ค.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344577-e97dd200-cf81-11eb-99af-33a9113593cf.png" width ="400"></p>

- .p12 ํ์ผ๋ก ์ค์ ํ๊ณ  ์ ์ฅํด์ค๋ค.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344676-01edec80-cf82-11eb-8a33-4102c480a9c4.png" width ="400"></p>

- ์ํธ๋ฅผ ์๋ ฅํด์ฃผ๋๋ฐ ๋์ค์๋ ํ์ํ๋ค ๊ธฐ์ตํด๋์.

<p align="center"><img src = "https://user-images.githubusercontent.com/69136340/122344726-0fa37200-cf82-11eb-882a-c78787b2e267.png" width = "400"></p>

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344789-1f22bb00-cf82-11eb-80e5-cba981ed5f99.png" width = "150"></p>

*provider server ์ ์ธ์ฆ์์ ๊ฐ์ธ ํค๋ฅผ ๋ชจ๋ ์ค์นํด์ผํ๋๋ฐ, ์๋ฒ ๊ฐ๋ฐํ๊ฒฝ์ ๋ฐ๋ผ ์ ๋ฌํ  ํ์ผ์ด ๋ฌ๋ผ์ง๋ค๊ณ  ํ๋ค. php ์๋ฒ์๋ .pem ์ ์ ๋ฌํด์ผํ๊ณ , ๋๋จธ์ง๋ .p12 ๋ง ์ ๋ฌํด๋ ๋๋ ๊ฒฝ์ฐ๊ฐ ์๋ ๋ฏํ๋ค.

firebase ๊ฐ์๊ฒฝ์ฐ๋ ๋๊ฐ์ง ์ง์ํ๋ค.

์ฐธ๊ณ ) pem ํ์ผ์ด ์๊ตฌ๋๋ค๋ฉด ์๋ ์ฃผ์๋ฅผ ์ฐธ์กฐํด์ ํตํด์ ๋ง๋ค์ด์ฃผ๋ฉด ๋๋ค.

[https://babbab2.tistory.com/57](https://babbab2.tistory.com/57)

## B. p8 ์ธ์ฆํค ๋ง๋ค๊ธฐ

์์ App ID ๋ฑ๋ก ๋ฐฉ๋ฒ๊ณผ ๋๊ฐ์ด ํด์ฃผ๊ณ  ๋ค๋ฅธ์ ์ Development ์ Production certificates ๋ง ๋ง๋ค์ง ์์ผ๋ฉด ๋๋ค. ์๋๋ฉด ์ฐ๋ฆฐ ์ธ์ฆ์๊ฐ ์๋ ์ธ์ฆํค๋ฅผ ์ฌ์ฉํ ๊ฑฐ๋๊น.

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344451-c7844f80-cf81-11eb-9c1a-27f894553a90.png" width = "700"></p>

<p align="center"><img width="700" alt="แแณแแณแแตแซแแฃแบ 2021-06-17 แแฉแแฎ 2 32 49" src="https://user-images.githubusercontent.com/69136340/122344414-bcc9ba80-cf81-11eb-9b0a-b2fe1a7a9a9b.png"></p>

<p align="center"><img width="700" alt="แแณแแณแแตแซแแฃแบ 2021-06-17 แแฉแแฎ 2 33 04" src="https://user-images.githubusercontent.com/69136340/122344343-a7ed2700-cf81-11eb-94b3-1280f9bc32ed.png"></p>

<p align="center"><img src="https://user-images.githubusercontent.com/69136340/122344317-a28fdc80-cf81-11eb-9aa8-e9a39c82f827.png" width ="700"></p>

๋ธ๋์ ๊ฒฝ๊ณ ์ฒ๋ผ ํ๋ฒ๋ง ๋ค์ด๋ก๋ ๊ฐ๋ฅํ๋ค.

**๊ทธ ๋ค์์ ํ์ด์ด๋ฒ ์ด์ค์์ p8 ํ์ผ์ ์ธ์ฆํค๋ก ๋ฑ๋กํด์ฃผ๋ฉด ๋๋ค.**

**์ถ์ฒ**

[[React Native] ๐ฅ Firebase ๋ก ํธ์ฌ ์๋ฆผ ๊ตฌํํ๊ธฐ - (2) iOS ์ฑ์์ ํธ์ ์๋ฆผ ๋์ฐ๊ธฐ!](https://velog.io/@mayinjanuary/React-Native-Firebase-๋ก-ํธ์ฌ-์๋ฆผ-๊ตฌํํ๊ธฐ-2-IOS-์ฑ-์ธํํ๊ธฐ)

## 3. ํ๋ก์ ํธ์์ iOS  Push Notification, Backgrounds Mode ํ์ฑํ

- ์์ ์ iPhone ์์ ๋๋ฆด ๊ฒฝ์ฐ์ ํด๋น ๊ฐ๋ฐ์๊ณ์ ๊ณผ device ๋ฅผ ์ค์ ํ๋ค.
- Signing & Capabilities ํญ์์ +Capability ๋ฅผ ์ ํํด์ Push Notifications ๋ฅผ ์ถ๊ฐํ๋ค.

<p align="center"><img width="400" src="https://user-images.githubusercontent.com/69136340/122344141-65c3e580-cf81-11eb-8f24-a94d1a176667.png"></p>

- ๊ฐ์ ๋ฐฉ๋ฒ์ผ๋ก Background Modes ๋ ์ถ๊ฐํ๊ณ  Background fetch ์ Remote notifications ๋ฅผ ์ค์ ํ๋ค.

<p align="center"><img width="400" alt="แแณแแณแแตแซแแฃแบ 2021-06-16 แแฉแแฎ 9 33 58" src="https://user-images.githubusercontent.com/69136340/122344205-7a07e280-cf81-11eb-90c9-9505c0b31fcf.png"></p>

<p align="center"><img src ="https://user-images.githubusercontent.com/69136340/122344225-855b0e00-cf81-11eb-9359-a734978001d0.png" width = "300"></p>

## 4. firebase ์์ ํธ์ ์๋ฆผ์ ๊ตฌํํ๋ค๋ฉด?

- p8 ํค๋ฅผ ์ฐ๋ ์์. ์ธ์ฆํค๋ 1๋๋ง๋ค ๊ฐฑ์ ํ์ง ์์๋ ๋๊ธฐ ๋๋ฌธ์ ๋ณดํต p8 ๋ฅผ ์ฐ๋ ์์๊ฐ ๋ง์๋ค.

[https://velog.io/@mayinjanuary/React-Native-Firebase-๋ก-ํธ์ฌ-์๋ฆผ-๊ตฌํํ๊ธฐ-2-IOS-์ฑ-์ธํํ๊ธฐ](https://velog.io/@mayinjanuary/React-Native-Firebase-%EB%A1%9C-%ED%91%B8%EC%89%AC-%EC%95%8C%EB%A6%BC-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0-2-IOS-%EC%95%B1-%EC%84%B8%ED%8C%85%ED%95%98%EA%B8%B0)

- p12 ์ธ์ฆ์๋ฅผ ์ฐ๋ ์์. ์ธ์ฆ์๋ 1๋๋ง๋ค ๊ฐฑ์ ํด์ผ ํ๋ค.

[https://faith-developer.tistory.com/156](https://faith-developer.tistory.com/156)

์ ์ค์ ๋ก ํ๋ฒ ํธ์์๋ฆผ์ ๋ณด๋ด๋ณด๊ฒ ์ต๋๋ค.
  
## 5. iOS ์ฑ์ Firebase ์ถ๊ฐํ๊ธฐ

iOS ์ฑ์ ๋ด Firebase ํ๋ก์ ํธ์ ์์ ํ๊ฒ ์ฐ๊ฒฐํ๊ธฐ ์ํด์ , ์ธ์ฆ์ ํ์ผ์ ๋ค์ด๋ฐ์์ผ ํ๊ณ , ๊ทธ๊ฑธ ๋ด iOS ์ฑ ์์ ์ธํํด์ผ ํฉ๋๋ค. 

- ํ๋ก์ ํธ๋ฅผ ์์ฑํด์ฃผ๊ณ 
- ios ์ฑ์ ์ถ๊ฐํด์ค๋๋ค.

<p align="center"><img width="300" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 1 17 00" src="https://user-images.githubusercontent.com/69136340/122633638-90927300-d114-11eb-99ad-9bc116fa5c93.png"></p>

- ์ฑ์ ๋ฑ๋กํด์ค๋๋ค. (iOS ๋ฒ๋ค ID ๋ ํ๋ก์ ํธํ์ผ์์ ํ์ธ๊ฐ๋ฅํ๋ค.)

<p align="center"><img width="500" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 1 18 36" src="https://user-images.githubusercontent.com/69136340/122633648-9ee08f00-d114-11eb-9a7d-5d2ff5dafd2a.png"></p>

- GoogleService-info.plist ๋ค์ด๋ก๋ ํด์ ํ๋ก์ ํธ์ ์ถ๊ฐํด์ค๋ค.
<p align="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 9 41 10" src="https://user-images.githubusercontent.com/69136340/122633702-d94a2c00-d114-11eb-9636-bc0c2bea6948.png"></p>

<p align="center"><img width="500" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 9 41 37" src="https://user-images.githubusercontent.com/69136340/122633707-e0713a00-d114-11eb-9227-54004e313fe6.png"></p>

- Friebase SDK ๋ฅผ ์ถ๊ฐํ๋ค.

<p align="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 9 45 15" src="https://user-images.githubusercontent.com/69136340/122633736-00086280-d115-11eb-8886-fedcad3d4cf6.png"></p>

- ์ถ๊ฐ์ ์ผ๋ก ์ถํ์ ๋ฉ์์ง ์์ ์ ์ํด์ `Firebase/Messaging` ํ์ํ๋ ์ง๊ธ ๊ฐ์ด ์ถ๊ฐํด์ install ํด์ฃผ์.

<p align="center"><img width="500" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฎ 2 30 23" src="https://user-images.githubusercontent.com/69136340/122633766-2b8b4d00-d115-11eb-87eb-4c37ac65d34b.png"></p>

- AppDelegate.swift ํ์ผ์ `import Firebase` ์  `FirebaseApp.configure()` ๋ฅผ ์ถ๊ฐํด์ค๋ค.

<p align="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 9 46 57" src="https://user-images.githubusercontent.com/69136340/122633754-1f06f480-d115-11eb-85cf-f84af3ffefce.png"></p>

## 6. ์๋ฆผ ๊ถํ ์์ฒญ

- iOS ์์๋ ์ฌ์ฉ์์ ๋์ ์๋ notification ์ ์์ ํ์ง ๋ชปํ๋๋ก ํ๊ธฐ๋๋ฌธ์ ๊ถํ์ ์์ฒญํด์ผํ๋ค.

 ๋ณดํต ์ฑ์ด ์ฒ์ ์คํ๋  ๋ ๋ฌผ์ด๋ณด๊ฑฐ๋ ํธ์์๋ฆผ์ ์ค์ ํ๋ ๋จ๊ณ์์ ๋ฌผ์ด๋ณด๋ฉด ๋๋ค. ์๋ ์ฝ๋๋ ์ฑ์ ๋ฐ์นํ  ๋ ๊ถํ์ ์์ฒญํ๊ธฐ ์ํด์ `application(_:didFinishLaunchingWithOptions:)` ๋ฉ์๋์ ์ถ๊ฐํด ์คฌ๋ค.

- AppDelegate.swift

`UNAuthorizationOptions` ์ผ๋ก ํธ์ ๊ถํ์ ์ค์ ํด์ค๋ค. (alert : ์๋ ๊ถํ, badge : badge ์๋ฐ์ดํธ ๊ถํ, sound : ์๋ฆฌ ๊ถํ)
	
```swift
// Tells the delegate that the launch process is almost done and the app is almost ready to run.
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

	// ๊ธฐ์กด์ ์ ์๋ ํ์ด์ด๋ฒ ์ด์ค ๊ถํ ์ค์ 
        FirebaseApp.configure()
        
	// ํธ์ ๊ถํ ์ค์ 
        UNUserNotificationCenter.current().delegate = self

        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter
          .current()
          .requestAuthorization(
            options: authOptions,completionHandler: { (_, _) in }
          )
        application.registerForRemoteNotifications()
        
        return true
    }
```

- ํ์ด์ด๋ฒ ์ด์ค์ ๋ธํฐ๊ฐ ์์ ๋  ์ ์๋๋ก ํ๋ค.

```swift
extension AppDelegate : UNUserNotificationCenterDelegate {
	
	// 1. Asks the delegate how to handle a notification that arrived while the app was running in the foreground.
    func userNotificationCenter(_ center: UNUserNotificationCenter,willPresent notification: UNNotification,withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound])
    }

	// 2. Asks the delegate to process the user's response to a delivered notification.
    func userNotificationCenter(_ center: UNUserNotificationCenter,didReceive response: UNNotificationResponse,withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}
```
	
**์ฃผ์)**
	
1 : `userNotificationCenter(_:willPresent:withCompletionHandler:)` ๋ฉ์๋๋ foreground ์์ ๋ฌ๋์ค์ ์ฑ์ ๋์ฐฉํ๋ notification ์ ๋ค๋ฃฌ๋ค.
	
`completionHandler()` ์ notification ์ ๋ํด์ presentation option ์ ๊ฐ์ง๊ณ  ์คํ๋  ๋ธ๋ก์ด๋ค. `UNNotificationPresentationOptions(.sound, .badge ๋ฑ์ ์ต์) -> Void` ์ ํตํด ์ด ๋ธ๋ก์๋ ๋ฆฌํด๊ฐ์ด ์๊ณ  `UNNotificationPresentationOptions` ํ๋ผ๋ฏธํฐ๋ฅผ ์ฌ์ฉํจ์ ์ ์ ์๋ค.
	
2 : `userNotificationCenter(_:didReceive:withCompletionHandler:)` ๋ฉ์๋๋ ๋์ฐฉํ notification ์ ๋ํ user ์ ๋ฐ์์ ๋ค๋ฃฌ๋ค.

completionHandler ์ ๋ฐํ๊ฐ์ด () -> Void `completionHandler()` ์ด๊ธฐ ๋๋ฌธ์ completionHandler ๋ง์ง๋ง์ ํญ์ `completionHandler()` ๋ฅผ ํธ์ถํด์ฃผ์ด์ผ ํ๋ค.
	
์ด ๋ฉ์๋๋ ์๋์ ๊ฐ์ด notification ์์ action ์ ๋ํ ์ค์ ์ ํ  ์ ์๋ค.
	
<img width="300" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฎ 10 03 35" src="https://user-images.githubusercontent.com/69136340/122643334-34e2dc80-d14a-11eb-957d-3a968e1d1026.png">

๋ ์์ธํ ๋ด์ฉ์ ์๋ ์ฃผ์๋ฅผ ์ฐธ์กฐ.
	
[Apple Developer - Declaring Your Actionable Notification Types](https://developer.apple.com/documentation/usernotifications/declaring_your_actionable_notification_types)

---
	
**warning**

iOS 14.0 ์์ alert ์ต์์ด ์ถ์ฒ๋์ง ์์๋ค. ๊ทธ๋์ UNNotificationPresentationOptions ์ ์ด๋ค ์์ฑ๋ค์ด ์กด์ฌํ๋์ง ์ดํด๋ณด์๋ค.

<p align ="center"><img width="800" alt="_2021-06-19__2 41 56" src="https://user-images.githubusercontent.com/69136340/122633809-69887100-d115-11eb-9409-07e47354a62b.png"></p>

<p align ="center"><img width="400" alt="_2021-06-19__2 41 28" src="https://user-images.githubusercontent.com/69136340/122633808-668d8080-d115-11eb-9a13-98a558c81476.png"></p>

badge : ์ฑ ์์ด์ฝ ์ฐ์ธก์๋จ์ ํ์๋๋ ์๋ฆผ ์ซ์๊ฐ badge ์ ํด๋นํ๋ค. foreground ์ผ ๊ฒฝ์ฐ๋ ์๋ฆผ์ ๋ฐ๋ก ํ์ธํ๋๊น ํน๋ณํ ๊ฒฝ์ฑ ์๋๋ฉด ๋ถํ์ํ๋ค.

sound : notification ๊ณผ ๊ด๋ จ๋ ์๋ฆฌ๋ฅผ ์คํํ๋ค.

alert : notification ์ผ๋ก๋ถํฐ content ๋ฅผ ์ ๊ณต๋ฐ์ alert ์๋์ ๋ณด์ฌ์ค๋ค.
	
iOS 14 ๋ถํฐ ์ถ๊ฐ๋ ์ต์๋ค์ด๋ค. alert ๋ ๋์ด์ ์ถ์ฒ๋์ง ์๋๋ค.
	
banner : ๋ฐฐ๋์ฒ๋ฌ notification ์ ๋ณด์ฌ์ค๋ค.

list : Notification Center ์์ ๋ณด์ฌ์ค๋ค. (๋ง ๊ทธ๋๋ก ์๋ฆผ์ผํฐ๋ค. ์ ๊ธ ํ๋ฉด์์ ํ๋ฉด์ ์ค๊ฐ์ ์ค์์ดํ ์ํ๊ฑฐ๋ ๋ค๋ฅธ ํ๋ฉด์์ ์คํฌ๋ฆฐ ์์ ์ค์์ ์ค์์ดํ๋ค์ดํ๋ฉด ๋์ค๋ '์๋ฆผ์ผํฐ'๋ค.)

- ์ฑ์ ์คํํ๊ฒ ๋๋ฉด notifications ์ ๋ํ ๊ถํ์ ์์ฒญํ๋ค. ๊ทธ๋ฆฌ๊ณ  ์ฑ์ค์ ์์ ํ์ธํด๋ณด๋ฉด Allow Notificiations ๊ฐ ์ค์ ๋์ด์๋ ๊ฒ์ ํ์ธ ํ  ์ ์๋ค.

<p align ="center"><img width="250" src="https://user-images.githubusercontent.com/69136340/122634920-edddf280-d11b-11eb-9c2e-02ebe3e020e8.png"><img width="250" src="https://user-images.githubusercontent.com/69136340/122634866-bbcc9080-d11b-11eb-9584-05e8b703e987.png">
</p>

## 7. Firebase iOS ์ฑ ๋ด์ ์ธ์ฆ์ ๋ฑ๋ก
  
- ํ์ด์ด๋ฒ ์ด์ค์ ๋ฑ๋กํ๋ ํ๋ก์ ํธ์ ์ฑ์ ์ ํํ๋ค.
  
<p align ="center"><img width="300" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 9 59 57" src="https://user-images.githubusercontent.com/69136340/122633883-de5bab00-d115-11eb-8a5a-552d9c6f80a4.png"></p>

- ํด๋ผ์ฐ๋ ๋ฉ์์ง์์ ์ธ์ฆ์๋ฅผ ๋ฑ๋กํ๋ค.

<p align ="center"><img width="500" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 10 00 53" src="https://user-images.githubusercontent.com/69136340/122633889-e582b900-d115-11eb-8b3c-b3d644ccb5c8.png"></p>

- ์ธ์ฆํค ์ฆ p8 ํ์ผ์ ์ฌ์ฉํ๋ฉด ์ข๋ค๊ณ  ํ์ง๋ง ๋๋ p12 ํ์ผ๋ง ์๊ธฐ๋๋ฌธ์ APN ์ธ์ฆ์์ ์ธ์ฆ์๋ฅผ ์๋ก๋ ํ  ๊ฒ์ด๋ค.

**A-1. Certificates ์์ฑ** ๋จ๊ณ์์ ๊ฐ๋ฐ APN ๊ณผ ํ๋ก๋์ APN ์ ๋ง๋ค์ด์ฃผ๋ฉด ๋๋ค. ๊ทธ๋ฆฌ๊ณ  ํค์ฒด์ธ์์ ๋ด๋ณด๋ด๊ธฐํ p12 ํ์ผ์ ์๋ก๋ํด์ค๋ค.

<p align ="center"><img width="500" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 10 06 04" src="https://user-images.githubusercontent.com/69136340/122633901-f6cbc580-d115-11eb-88e3-46837a7dcf86.png"></p>

## 8. Firebase ์ฝ์์์ ํ์คํธ ๋ฉ์ธ์ง ๋ณด๋ด๊ธฐ

- Cloud Messaging ๋ค์ด๊ฐ๋ค.

<p align ="center"><img width="400" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 10 11 24" src="https://user-images.githubusercontent.com/69136340/122633917-1367fd80-d116-11eb-8f8a-5f6a87890f09.png"></p>

- ๋ฉ์์ง ๋ณด๋ด๊ธฐ

<p align ="center"><img width="400" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฅแซ 10 13 27" src="https://user-images.githubusercontent.com/69136340/122633920-17941b00-d116-11eb-99be-6b9ac2ead210.png"></p>

- ์๋ฆผ ์ ๋ชฉ๊ณผ ํ์คํธ๋ฅผ ์ค์ ํด์ค๋ค.

<p align ="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฎ 3 08 54" src="https://user-images.githubusercontent.com/69136340/122633925-1c58cf00-d116-11eb-9acb-4407fa3035ec.png"></p>

- ํ์ด์ด๋ฒ ์ด์ค์ ๋ฑ๋กํ App ์ ์ ํํ๋ค.

<p align ="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฎ 3 10 50" src="https://user-images.githubusercontent.com/69136340/122633928-1f53bf80-d116-11eb-8aad-cc15041c0869.png"></p>

- ์์ฝํ  ์ต์์ ์ ํํ๊ณ  ๋ค์์ ๋๋ฌ ์งํ์ ํด๋ ๋๊ณ  ๊ฒํ ๋ฅผ ํด๋ ๋๋ค.

<p align ="center"><img width="550" alt="แแณแแณแแตแซแแฃแบ 2021-06-19 แแฉแแฎ 3 12 51" src="https://user-images.githubusercontent.com/69136340/122633935-24187380-d116-11eb-871f-f5af5c19bacf.png">

- ๊ฒํ ํ๊ฒ๋๋ฉด ๋ค์๊ณผ ๊ฐ์ ํ์์ฐฝ์ด ๋ฌ๋ค. ๊ฒ์ํด๋ณด์.

<p align ="center"><img width="450" alt="_2021-06-19__3 14 09" src="https://user-images.githubusercontent.com/69136340/122633936-27abfa80-d116-11eb-8cee-361ab5e4a074.png"></p>

์๋์ ์ธ๊ฐ์ง ๊ฒฝ์ฐ ๋ชจ๋ ์ ์์ ์ผ๋ก ๋์ฐฉํ๋ค๋ฉด ํ์คํธ ๋ฉ์์ง ๋ณด๋ด๊ธฐ ์ฑ๊ณต์ด๋ค.

- ์ฑ์ด ์ผ์ ธ์์ ๋ (Foreground)
- ์ฑ์ด ์ผ์ ธ์์ง๋ง background ์ ์์ ๋ (Background)
- ์ฑ์ด ๊บผ์ ธ์์ ๋ (Quit)

<p align ="center"><img width="250" src ="https://user-images.githubusercontent.com/69136340/122633981-6d68c300-d116-11eb-87a0-1d1202fa5b48.png"></p>
