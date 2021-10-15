package pageObjects;

import org.openqa.selenium.support.PageFactory;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;

import static utils.Utils.driver;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static utils.Utils.*;

public class LoginPage {
	
	public LoginPage (AppiumDriver <?> driver) {
		PageFactory.initElements(new AppiumFieldDecorator(driver), this);
	}
	//ELEMENTOS
	
	@AndroidFindBy(id = "com.android.packageinstaller:id/permission_allow_button")
	private MobileElement botaoaLocalizacao;
	
	@AndroidFindBy(xpath = "//android.widget.TextView[@text='Entrar']")
	private MobileElement botaoEntrarLogin;
	
	@AndroidFindBy(xpath = "//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText")
	private MobileElement campoEmail;
	
	@AndroidFindBy(xpath = "//android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText")
	private MobileElement campoSenha;
	
	@AndroidFindBy(xpath = "//android.view.ViewGroup/android.view.ViewGroup[4]/android.widget.TextView")
	private MobileElement botaoEntrar;
	
	@AndroidFindBy(xpath = "//android.widget.TextView[contains(@text,'Dinheiro na carteira')]")
	private MobileElement txtLoginSucesso;
	
	@AndroidFindBy(id = "android:id/message")
	private MobileElement msgErroEmailSenha;

	@AndroidFindBy(xpath = "//android.view.ViewGroup/android.widget.TextView[2]")
	private MobileElement msgEmailInvalido;
	
	//METODOS
	
	public void permitirLocalizaçao() {
		botaoaLocalizacao.click();
	}
	
	public void acessarLogin() {
		botaoEntrarLogin.click();
	}
	
	public void preencherCampoEmail(String email) {
		campoEmail.sendKeys(email);
	}
	
	public void preencherCampoSenha(String senha) {
		campoSenha.sendKeys(senha);
	}
	
	public void acionarBotaoEntrar() {
		botaoEntrar.click();
	}
	
	public String mensagemEmailSenhaIncorreto() {
		return msgErroEmailSenha.getText();
	}
	
	public String mensagemEmailInvalido() {
		return msgEmailInvalido.getText();
	}
	
	public void confirmarcaoLoginSucesso() {	
		assertEquals("Dinheiro na carteira", txtLoginSucesso.getText());
	}
	public void validadarMensagemDeEmailSenhaIncorreto(String msg) {
		assertEquals(msg, msgErroEmailSenha.getText());
		
	}
	
	public void validadarMensagemDeEmailInvalido(String msg) {
		assertEquals(msg, msgEmailInvalido.getText());
		
	}
	
	public void validadarBotaoDesabilitado() {
		assertFalse(!botaoEntrar.isEnabled());
		
	}
	
}
