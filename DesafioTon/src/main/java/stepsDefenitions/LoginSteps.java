package stepsDefenitions;

import static org.junit.Assert.assertEquals;
import static utils.Utils.driver;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import pageObjects.LoginPage;

public class LoginSteps {
	
	LoginPage lp = new LoginPage(driver);
	
	@Dado("o usuario permita o acesso a localizacao")
	public void oUsuarioPermitaOAcessoALocalizacao() {
		lp.permitirLocalizaçao();
	}

	@Quando("o usuario acione o botao de entrar da pagina inicial")
	public void oUsuarioAcioneOBotaoDeEntrarDaPaginaInicial() {
		lp.acessarLogin();
	}

	@Quando("o usuario informar o email {string}")
	public void oUsuarioInformarOEmail(String email) {
		lp.preencherCampoEmail(email);
	}

	@Quando("o usuario informar a senha {string}")
	public void oUsuarioInformarASenha(String senha) {
		lp.preencherCampoSenha(senha);
	}

	@Quando("o usuario acionar o botao de entrar")
	public void oUsuarioAcionarOBotaoDeEntrar() {
		lp.acionarBotaoEntrar();
	}

	@Entao("o sistema autentica o login do usario")
	public void oSistemaAutenticaOLoginDoUsario() {
		lp.confirmarcaoLoginSucesso();
	}

	@Entao("o sistema apresenta um modal com a mensagem de email ou senha incorretos")
	public void oSistemaApresentaUmModalComAMensagemDeEmailOuSenhaIncorretos() {
		lp.validadarMensagemDeEmailSenhaIncorreto("Email ou senha incorretos");
	}

	@Entao("o sistema apresenta a mensagem email invalido")
	public void oSistemaApresentaAMensagemEmailInvalido() {
		lp.validadarMensagemDeEmailInvalido("Email inválido");
	}

	@Entao("o sistema nao deve habilitar o botao de entrar")
	public void oSistemaNaoDeveHabilitarOBotaoDeEntrar() {
		lp.validadarBotaoDesabilitado();
	}


}
