@smoke
Feature: US1002 Kullanici ortak baslangic adimlarini background ile calistirir

  Background: Testotomasyonu ana sayfaya gidis
    Given kullanici testotomasyonu anasayfaya gider
@paralel2
  Scenario: TC04 kullanici testotomasyonu sayfasinda phone bulabilmeli

    When arama kutusuna phone yazip aratir
    Then arama sonucunda urun bulunabildigini test eder


  Scenario: TC05  kullanici testotomasyonu sayfasinda dress bulabilmeli

    When arama kutusuna dress yazip aratir
    Then arama sonucunda urun bulunabildigini test eder


  Scenario: TC06 kullanici testotomasyonu sayfasinda travel yazinca urun bulabilmeli

    When arama kutusuna travel yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
