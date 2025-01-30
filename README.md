# Flutter Projesi-QuitZone

  

![İstinye Üniversitesi](https://www.unitededucation.com/linklogoch/istinye-university-logo.png)

  

## Proje Hakkında

Bu uygulama, kullanıcılarına sigarayı bırakma yolunda yardım etme amacı ile oluşturulmuştur. Uygulamada sigaranın insan vücudu üzerinde zararları ve sigarayı bırakması dahilinde vücudunda ne gibi değişimler olacağı belirtilecek, eklenen sayaç ile kullanıcı sigarayı bırakmada kaçıncı günde ise o günde vücudunda yaşanan değişimler yazılarak kullanıcının motive edilmesi sağlanacak(sağlık kuruluşlarının yazdığı açıklamalar alınarak uygulama içerisine konulacak). kullanıcı maddi zararı takip edebilmesi için kullandığı sigaranın fiyatı ile günlük içtiği miktar çarpılıp oluşan miktar kullanıcıya sunulacak ve günlük, haftalık ve aylık zaman dilimleri ile birlikte kullanıcının sigarayı bırakarak biriktirdiği miktar kullanıcıya sunulması amaçlanacak.

  

## Ekibimiz

-  **Danışman:**  
[https://github.com/keyvanarasteh](Keyvan Arasteh)


-  **Takım Üyeleri:**

- Ad Soyad: Erva Efe DALBAY
- Öğrenci No: 2320161003
- Bölüm: Bilgisayar Programcılığı
- GitHub:[ efedalbay](https://github.com/efedalbay)

  

## Özellikler

- Sigaranın zararlarının belirtilmesi
- Sigara bırakılırsa ne gibi değişimler yaşanacağının belirtilmesi
- Sigarayı bırakmaya yardımcı olacak bilgiler ve ipuçlarının belirtilmesi
- Kullanıcıların Yeşilay gibi STK'lar ile iletişime geçebilmesini sağlamak(Yeşilay'ın sitesine yönlerdirmek, Yeşilay'ın numarasının uygulama içeresine koyulması gibi.)
- Kademeli bırakmak isteyen kullanıcılar için günlük takip sistemi eklenmesi ve takvimin bu sistem ile uyumlu çalışması
- Sigarayı bırakan kullanıcılar için gün gün yaşadıkları değişimlerin belirtilmesi
- Maddi kazançlarının hesaplanması ve kullanıcıya sunulması 
- Biriken parayı ayakkabı, kıyafet, teknolojik aletler vb. gibi ürünlerin fiyatını girmesi ve biriken parasıyla bu ürünleri almaya ne kadar yaklaştığının gösterilmesi
- Motive etmek amaçlı kullanıcıdan alınan verilerle içilmeyen sigara sayısı ve günler için rozetler
- Kullanıcıların kriz takibi yapabileceği bir sistem


  
## Kullanılan Teknolojiler

- Flutter

- Dart


  
## Başlangıç

  

### Gereksinimler

- Flutter SDK (^3.5.4)

- Dart SDK (^3.5.4)


  
### Kurulum Adımları

1. Projeyi bilgisayarınıza indirin:

```bash

git  clone [https://github.com/efedalbay/quitzone]

```

  

2. Proje klasörüne gidin:

```bash

cd [quitsmoke]

```

  

3. Gerekli paketleri yükleyin:

```bash

flutter  pub  get

```

  

4. Uygulamayı başlatın:

```bash

flutter  run

```

  

## Proje Yapısı

```

lib/

├── modeller/ # Veri modelleri

├── ekranlar/ # Uygulama ekranları

├── widgets/ # Tekrar kullanılabilir arayüz öğeleri

├── servisler/ # API servisleri

└── yardımcılar/ # Yardımcı fonksiyonlar

```

  

## Ekran Görüntüleri

![loading](https://github.com/user-attachments/assets/515d23bc-039f-491a-98cc-17044f709c7d)
![register](https://github.com/user-attachments/assets/8576e9f8-6fdc-492e-9739-8b85f6094516)
![login](https://github.com/user-attachments/assets/4998da5d-ab89-41ea-aef0-973026c4184c)
![home](https://github.com/user-attachments/assets/1b76024f-8546-439d-9a38-ac3454639c2e)
![drawer](https://github.com/user-attachments/assets/949b1627-4c63-4411-a344-89baf2335f04)
![profile](https://github.com/user-attachments/assets/195c3a23-47b6-4ec1-aa9c-1d984e2613b7)
![calendar](https://github.com/user-attachments/assets/d1f1f25c-d0ba-46f8-988d-560f6b59e780)
![counter](https://github.com/user-attachments/assets/2178fd30-6d1c-405a-9eba-76db97a4afab)
![goal](https://github.com/user-attachments/assets/c96a5918-e957-4c58-a8e6-373871c1ebcb)
![achievement](https://github.com/user-attachments/assets/e4f1d946-ecbf-4414-8e18-b42dc9c0c94f)
![setting](https://github.com/user-attachments/assets/001cc3dd-f5c1-4348-801d-12b1d2b45620)
![dregister](https://github.com/user-attachments/assets/fe5da4a7-91a3-429e-90ad-1c1e22525f85)
![dlogin](https://github.com/user-attachments/assets/e14bb0b8-c168-4024-92db-bddd22f6358e)
![dhome](https://github.com/user-attachments/assets/77d43d67-7059-4501-8590-9c39a61cf1b8)
![ddrawer](https://github.com/user-attachments/assets/18f14fa6-d15f-43dc-8b58-10d7084bbab1)
![dprofile](https://github.com/user-attachments/assets/14598b3a-67a3-427a-b1b1-6ca537c51e78)
![dcalendar](https://github.com/user-attachments/assets/9afe80bf-6ab1-4a02-9160-fd825b42e879)
![dcounter](https://github.com/user-attachments/assets/f3d6a4ff-d473-4a59-a9b9-307032b44f67)
![dgoal](https://github.com/user-attachments/assets/04180d5a-ab84-4880-bc66-e43190d6c5f3)
![dachievement](https://github.com/user-attachments/assets/035ad308-d740-4801-9861-6e403ba85f8c)
![dsetting](https://github.com/user-attachments/assets/a9e46c6b-fb51-4d70-bbf9-323576668714)
![logo](https://github.com/user-attachments/assets/8fce3468-a061-438e-be55-7a04b033ae49)



##  Demo Video




## Projeye Katkı Sağlama

1. Projeyi forklayın

2. Yeni bir dal oluşturun (`git checkout -b ozellik/YeniOzellik`)

3. Değişikliklerinizi kaydedin (`git commit -m 'Yeni özellik eklendi'`)

4. Dalınıza gönderin (`git push origin ozellik/YeniOzellik`)

5. Pull Request oluşturun

  

## Lisans

MIT license kapsamında lisanslanmıştır. Daha fazla bilgi için `LICENSE` dosyasını inceleyebilirsiniz.

  

## İletişim

- Proje Bağlantısı: [[GitHub repository linki](https://github.com/efedalbay/quitsmoke)]

- İstinye Üniversitesi: [https://www.istinye.edu.tr/](https://www.istinye.edu.tr/)

  

## Teşekkürler

- İstinye Üniversitesi'ne destekleri için teşekkür ederiz.
- Bilgilerini bize aktardığı için ve süreçte desteklerini bizden esirgemeyen Keyvan Hocamıza teşekkür ederiz.

