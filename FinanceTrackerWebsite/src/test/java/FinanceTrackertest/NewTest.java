package FinanceTrackertest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class NewTest {
  @Test
  public void f() {
	  //define chrome driver
	  System.setProperty("webdriver.chrome.driver", "C:\\Program Files (x86)\\Google\\Chrome\\chromedriver.exe");
	  //define driver instance
	  WebDriver driver = new ChromeDriver();
	  //navigate to this url
	  driver.get("http://localhost:8080/FinanceProjectMain/login.jsp");
	  // enter a valid username
	  driver.findElement(By.name("email")).sendKeys("testuser");
	  driver.findElement(By.name("password")).sendKeys("testuser");
	  driver.findElement(By.name("login")).click();
  }
  @BeforeTest
  public void beforeTest() {
  }
  @AfterTest
  public void afterTest() {
	  
  }
}
