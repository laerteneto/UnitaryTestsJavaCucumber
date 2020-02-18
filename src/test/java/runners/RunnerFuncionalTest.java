package runners;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/features/inserir_conta.feature",
		glue = {"helpers", "steps"},
		tags = {"@funcionais"},
		plugin = {"pretty", "html:target/report-html", "json:target/report.json"},
		monochrome = true,
		snippets = SnippetType.CAMELCASE,
		dryRun = false,
		strict = false
		)


public class RunnerFuncionalTest {

	@BeforeClass
	public static void reset() {
		String driverPath = "/src/test/resources/chromedriver.exe";
		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + driverPath);
		WebDriver driver = new ChromeDriver();
		
		driver.get("https://srbarriga.herokuapp.com/login");
		driver.findElement(By.id("email")).sendKeys("laerte-m@hotmail.com");
		driver.findElement(By.id("senha")).sendKeys("123456");
		driver.findElement(By.tagName("button")).click();
		driver.findElement(By.linkText("reset")).click();
		driver.quit();
	}
	
}
