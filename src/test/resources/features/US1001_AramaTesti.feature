@paralel1
Feature: US1001 kullanici testotomasyonu sayfasinda arama yapar
  Scenario: TC01 kullanici testotomasyonu sayfasinda phone bulabilmeli
    Given kullanici testotomasyonu anasayfaya gider
    When arama kutusuna phone yazip aratir
    Then arama sonucunda urun bulunabildigini test eder


  Scenario: TC02  kullanici testotomasyonu sayfasinda dress bulabilmeli
    Given kullanici testotomasyonu anasayfaya gider
    When arama kutusuna dress yazip aratir
    Then arama sonucunda urun bulunabildigini test eder


  @smoke
  Scenario: TC03 kullanici testotomasyonu sayfasinda travel yazinca urun bulabilmeli
    Given kullanici testotomasyonu anasayfaya gider
    When arama kutusuna travel yazip aratir
    Then arama sonucunda urun bulunabildigini test eder


    #Dikkat: Runner class olusturmadan once testlerin calismasi icin stepdefinitions olusturduktan sonra
    # Hamburger menu altindaki build sekmesinden cekice basalim. daha sonra feature sayfasindan da run edebiliriz.
   # Sayfalarda yapilan her degisiklikten sonra cekic'e basmayi unutmayalim.
