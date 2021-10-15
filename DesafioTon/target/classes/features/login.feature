#language: pt
#enconding: UTF-8

@login
Funcionalidade: Login

Contexto: 
	Dado o usuario permita o acesso a localizacao

@login_Ce01
Cenario: Realizar login com sucesso
	Quando o usuario acione o botao de entrar da pagina inicial
	E o usuario informar o email "lvieira216@gmail.com"
	E o usuario informar a senha "Bis0111." 
	E o usuario acionar o botao de entrar
	Entao o sistema autentica o login do usario

@login_Ce02
Cenario: Tentativa de login email incorreto ou nao cadastrado
	Quando o usuario acione o botao de entrar da pagina inicial
	E o usuario informar o email "lvieira2161@gmail.com"
	E o usuario informar a senha "Bis0111." 
	E o usuario acionar o botao de entrar		
	Entao o sistema apresenta um modal com a mensagem de email ou senha incorretos

@login_Ce03	
Cenario: Tentativa de login com senha incorreta
	Quando o usuario acione o botao de entrar da pagina inicial
	E o usuario informar o email "lvieira216@gmail.com"
	E o usuario informar a senha "Bis0111.." 
	E o usuario acionar o botao de entrar		
	Entao o sistema apresenta um modal com a mensagem de email ou senha incorretos

@login_Ce04
Cenario: Tentativa com login com email invalido
	Quando o usuario acione o botao de entrar da pagina inicial
	E o usuario informar o email "lvieira216gmail.com"
	E o usuario informar a senha "Bis0111." 
	E o usuario acionar o botao de entrar		
	Entao o sistema apresenta a mensagem email invalido

@login_Ce05
Cenario: Validar obrigatoriedade de preenchimento dos campos email e senha para entrar no app
	Quando o usuario acione o botao de entrar da pagina inicial
	E o usuario informar o email "lvieira216gmail.com"
	E o usuario informar a senha "" 	
	Entao o sistema nao deve habilitar o botao de entrar
	

	
	