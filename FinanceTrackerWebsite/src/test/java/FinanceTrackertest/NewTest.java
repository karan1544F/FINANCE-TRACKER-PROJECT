package FinanceTrackertest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
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
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(5) > input")).clear();
	  driver.findElement(By.name("saving")).clear();
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(5) > input")).sendKeys("11111");
	  driver.findElement(By.name("saving")).sendKeys("25");
	  driver.findElement(By.cssSelector("body > div > div > div > form > button")).click();
	  //test add expenditure
	  driver.findElement(By.cssSelector("body > div:nth-child(4) > div > div > a")).click();
	  Select selectType = new Select(driver.findElement(By.cssSelector("body > form > div > div > div > fieldset:nth-child(3) > select")));
	  selectType.selectByVisibleText("Travel");
	  driver.findElement(By.cssSelector("body > form > div > div > div > fieldset:nth-child(4) > input")).sendKeys("11111");
	  driver.findElement(By.cssSelector("body > form > div > div > div > fieldset:nth-child(5) > input")).sendKeys("09082003");
	  driver.findElement(By.cssSelector("body > form > div > div > div > input")).click();
	  //test update expenditure
	  driver.findElement(By.cssSelector("body > div:nth-child(4) > div > table > tbody > tr:nth-child(1) > td:nth-child(4) > a:nth-child(1)")).click();
	  Select selectTypeedit = new Select(driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(5) > select")));
	  selectTypeedit.selectByVisibleText("Food");
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(6) > input")).clear();
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(6) > input")).sendKeys("11");
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(7) > input")).clear();
	  driver.findElement(By.cssSelector("body > div > div > div > form > fieldset:nth-child(7) > input")).sendKeys("09082004");
	  driver.findElement(By.cssSelector("body > div > div > div > form > button")).click();
	  //test delete expenditure
	  driver.findElement(By.cssSelector("body > div:nth-child(4) > div > table > tbody > tr:nth-child(1) > td:nth-child(4) > a:nth-child(2)")).click();
	 
  }
  @BeforeTest
  public void beforeTest() {
  }
  @AfterTest
  public void afterTest() {
	  
  }
}
