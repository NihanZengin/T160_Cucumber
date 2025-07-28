Feature: US1010 Belirlenen bilgilerle giris yapilamadigi kontrol edilir

  Scenario Outline: TC17 belirlenen gecersiz bilgilerle giris yapilamamali
    #Bu classin oncekinden farki buradaki mail v password bilgilerini config dosyasindan alacak.
    #Bunun icin 3 ve 4. adimlarin stepdefinitions kisminin congigden alan koddan olustugunu kontrol etmeliyiz.
    #CTRL+ fareyle adimlarin ustune geldigimizde bizi o adimin stepdefinitionstaki methoduna goturuyor.

    Given kullanici "toUrl" anasayfaya gider
    Then account linkine basar
    When email olarak "<verilenEmail>" girer
    And password olarak "<verilenPassword>" girer
    And kodlari 1 saniye bekletir
    And signIn butonuna basar
    Then sisteme giris yapilamadigini test eder


    Examples:
      |verilenEmail    		|verilenPassword    |
      |toGecerliMail   		|toGecersizPassword |
      |toGecersizMail   		|toGecersizPassword |
      |toGecersizMail2   		|toGecersizPassword2|
      |toGecersizMail   		|toGecersizPassword2|
      |toGecersizMail   		|toGecerliPassword  |
      |toGecersizMail2   		|toGecersizPassword |