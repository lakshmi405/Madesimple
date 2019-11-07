# Madesimple
Test Analyst Task

# Dependencies

    <dependencies>
    <dependency>
        <groupId>org.seleniumhq.selenium</groupId>
        <artifactId>selenium-chrome-driver</artifactId>
        <version>3.141.59</version>
    </dependency>
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>6.14.3</version>
            <scope>test</scope>
        </dependency>

    <dependency>
        <groupId>org.seleniumhq.selenium</groupId>
        <artifactId>selenium-support</artifactId>
        <version>3.141.59</version>
    </dependency>

    <dependency>
        <groupId>org.ow2.util.stream</groupId>
        <artifactId>stream</artifactId>
        <version>2.0.0</version>
    </dependency>

        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.11</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>info.cukes</groupId>
            <artifactId>gherkin</artifactId>
            <version>2.12.2</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>info.cukes</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>1.2.5</version>
        </dependency>

        <dependency>
            <groupId>info.cukes</groupId>
            <artifactId>cucumber-core</artifactId>
            <version>1.2.5</version>
        </dependency>
      
        <dependency>
            <groupId>info.cukes</groupId>
            <artifactId>cucumber-junit</artifactId>
            <version>1.2.5</version>
    	</dependency>
    </dependencies>
    
    
    
   
   
   #  home page 
  ``` 
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import pages.Newspage;

public class Homepage {

    static WebDriver driver;
    private By news_link= By.linkText("News");


    public Homepage(WebDriver driver) {
        this.driver=driver;

    }

    public Homepage() {

    }

    public Newspage clickNewsPage(){
        driver.findElement(news_link).click();
        return new Newspage(driver);

    }
}
```

    
    
   # Base Class
```
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import pages.Homepage;

public class Base {
     static protected WebDriver driver;
    static protected Homepage homepage;
    @BeforeClass
    public  static void setupBrowser() {
        System.setProperty("webdriver.chrome.driver", "C://Users//src//main//resource//chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        webSite(driver);
       homepage= new Homepage(driver);
    }
    @BeforeMethod
    public static void webSite( WebDriver driver){

        driver.get("https://www.test.co.uk/");

        System.out.println(driver.manage().getCookies());
      /*  Cookie name = new Cookie("ckns_explicit test", "1");
        driver.manage().addCookie(name);
        driver.navigate().refresh();*/
    }

    public static void quitBrowser(){
        driver.close();
    }

}
```
