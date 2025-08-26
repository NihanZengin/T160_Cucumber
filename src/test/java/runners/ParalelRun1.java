package runners;


import io.cucumber.junit.platform.engine.Constants;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;

/**
* paralel testing icin;
* 1- maven, sistem degiskenlerine eklenmeli
* 2- pom.xml'e build altinda gerekli plugins ekleyelim
* 3- eklenen her 3 pluginsde'de gerekli ayarlamalar yapilmali
*  a- Calistigimiz projede json raporlarinin konuldugu klasor ismini
      dogru dosya yolunu gostermeliyiz
   b- Ayni anda calisacak browser sayisini oraya islemeliyiz
   c- runners altinda kullanacagi class isimlerinin hangi kelimeleri icerdigini belirtmeliyiz.
       "Runner" ya da "ParalelRun"
* 4- Gelismis json raporlama kisminin kullandigimiz runnerda yorumdan kaldirildigini ve dogru isimlendirme kontrolu yapilir
* 5- Terminalde "mvn clean verify" komutunu gondererek testi baslatiriz
* 6- Gelismis json raporlamayi sadece paralel testing icin kullanmiyoruz.
* "Runner" class'tan calistigimizi pluginsde belirterek ve kullanilacak browser sayisini 1'e dusurerek
* her test icin bu raporlamadan yararlanabiliriz.*/

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("src/test/java")
@ConfigurationParameter(key = Constants.FEATURES_PROPERTY_NAME,value = "src/test/resources/features")
@ConfigurationParameter(key = Constants.GLUE_PROPERTY_NAME,value = "stepdefinitions")
@ConfigurationParameter(key = Constants.FILTER_TAGS_PROPERTY_NAME,value = "@paralel1")
@ConfigurationParameter(key = Constants.EXECUTION_DRY_RUN_PROPERTY_NAME,value = "false")

//@ConfigurationParameter(key = Constants.PLUGIN_PROPERTY_NAME,value = "pretty, html:target/cucumber-report/HtmlReport1.html")
@ConfigurationParameter(key = Constants.PLUGIN_PROPERTY_NAME,value = "pretty, json:target/json-reports/cucumberRapor1.json")
//@ConfigurationParameter(key = Constants.PLUGIN_PROPERTY_NAME,value = "pretty, junit:target/xml-report/cucumber1.xml")


public class ParalelRun1 {

}

