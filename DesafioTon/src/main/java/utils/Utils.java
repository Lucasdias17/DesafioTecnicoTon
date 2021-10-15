package utils;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

import io.appium.java_client.AppiumDriver;
import io.cucumber.core.api.Scenario;

public class Utils {

  public static AppiumDriver<WebElement> driver;

  public static void acessarApp() throws MalformedURLException {
    DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
    desiredCapabilities.setCapability("platformName", "Android");
    desiredCapabilities.setCapability("deviceName", "0039391454");
    desiredCapabilities.setCapability("automotionName", "uiautomator2");
    desiredCapabilities.setCapability("appPackage", "br.com.stone.ton");
    desiredCapabilities.setCapability("appActivity", "br.com.stone.ton.MainActivity");

    driver = new AppiumDriver<WebElement>(new URL("http://127.0.0.1:4723/wd/hub"), desiredCapabilities);
    
    driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
  }
  public static File gerarScreenShot(Scenario cenario) {
		final byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
		cenario.embed(screenshot, "image/png");
		File imagem = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
				try {
					
					FileUtils.copyFile(imagem, (new File("./target/screenshots", cenario.getName() + "-" + cenario.getStatus()+".png")));
				} catch (Exception e) {
					e.printStackTrace();
				}
		
		return imagem;
	}
 
}
//"platformName": "Android",
//"deviceName": "0039391454",
//"automotionName": "uiautomator2",
//"appPackage": "br.com.stone.ton",
//"appActivity": "br.com.stone.ton.MainActivity"

