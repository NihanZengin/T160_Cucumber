Feature: US1004 Kullanici parametre kullanarak istedigi kelimeyi aratir

  @paralel1
  Scenario: TC08 Kullanici istedigi kelimeyi aratabilmeli
    Given kullanici testotomasyonu anasayfaya gider
    When arama kutusuna "baby" yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And kodlari 2 saniye bekletir
    #burada 2 parametresini ilk kelime olarak yazmamaya dikkat ettik aksi takdirde parametre oldugunu anlamaz.


  Scenario: TC09 kullanici bazi kelimeleri bulamamali

    Given kullanici testotomasyonu anasayfaya gider
    When arama kutusuna "Cokoprens" yazip aratir
    Then arama sonucunda urun bulunamadigini test eder
    And kodlari 1 saniye bekletir