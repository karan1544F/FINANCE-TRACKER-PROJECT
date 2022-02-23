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
	  //testing update financial information^2
	  driver.findElement(By.linkText("Edit Finance Details")).click();
	  driver.findElement(By.name("income")).clear();
	  driver.findElement(By.name("saving")).clear();
	  driver.findElement(By.name("income")).sendKeys("10000");
	  driver.findElement(By.name("saving")).sendKeys("25");
	  driver.findElement(By.cssSelector("body > div > div > div > form > button")).click();
	  //test expenditure
	  
	  
  }
  @BeforeTest
  public void beforeTest() {
  }
  @AfterTest
  public void afterTest() {
	  
  }
}
