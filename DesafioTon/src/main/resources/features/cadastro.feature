#language: pt
#enconding: UTF-8
#Author: Lucas Dias

@cadastro
Funcionalidade: Casdastro

Contexto: 
	Dado o usuario permita o acesso a localizacao
	E o usuario esteja realizado o login de sucesso
	
	Esquema do Cenario: Cadastro sucesso
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "<celular>"e "<email>"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "<nomeMae>" 
		E o usuario aciona o botao de continuar
		E o usuario seleciona o campo de ramo e seleciona o ramo na modal exibida
		E o usuario aciona o botao de continuar
		E o usuario preenche os dados "<cep>" e "<numero>"
		E o usuario aciona o botao de continuar
		E o usuario preenche o codigo de verificacao enviado via sms 
		E o usuario aciona o botao de continuar
		E o usuario preenche os dados de "<senha>" e "<confirmarSenha>"	
		E o usuario aciona o botao de criar senha
		Entao o app cadastra e autentica o login do novo usuario
		Exemplos:
		|cpf |comeCompleto |dataNascimento |celular |email |nomeMae |cep |numero |senha |confirmarSenha|
		|		 |						 |							 |				|			 |				|    |			 |			|							 |


	Cenario: Validar a tentativa de cadastro sem concorda com a politca de privacidade
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		Entao o app ira habilitar o botao de criar minha conta
		Mas se o usuario nao selecionar o check box o app ira deixar o botao criar minha conta desabilitado


	Cenario: Validar a tentativa de cadastro sem preencher  dos dados obrigatorios
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario nao preencher todos dados solicitados
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Campo Obrigatório" 


	Cenario: Validar a tentativa de cadastro com cpf invalido
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche o numero de cpf invalido "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "CPF invalido" 
	
		
	Cenario: Validar a tentativa de cadastro com nome sem o sobrenome
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche o nome sem o sobrenome "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Nome está incompleto. Digite o nome e sobrenome" 

		
	Cenario: Validar a tentativa de cadastro com a data nascimento diferente do cpf
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche a data de nascimento diferente do cpf "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Sua data de nascimento pode estar errado" 


	Cenario: Validar a tentativa de cadastro com a data nascimento referente a menor de idade
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche a data de nascimento referente a idade menor de idade "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Data inválida" 
	
	
	Cenario: Validar a tentativa de cadastro com a data nascimento invalida
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche a data de nascimento com numerecao maior que nove numeros "cpf", "nomeCompleto" e "dataNascimento"
		Entao o app não deve permitir prencher mais que oito numeros
	
	
	Cenario: Validar a  tentativa de cadastro com email invalido
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche dados com email sem @ ou .com "celular"e "email"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Email inválido"


	Cenario: Validar a tentativa de cadastro com nome da mae sem sobrenome
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Nome está incompleto. Digite o nome e sobrenome" 
	
	
	Cenario: Validar a tentativa de cadastro sem selecionar ramo do negocio
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		E o usuario nao seleciona campo de ramo
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Campo obrigatório" 
	
		
	Cenario: Validar a tentativa de cadastro com cep invalido
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		E o usuario seleciona o campo de ramo e seleciona o ramo na modal exibida
		E o usuario aciona o botao de continuar
		E o usuario preenche o campo cep com numerecao inexistente "cep" e "numero"
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "CEP inválido"	
			
			
	Cenario: Validar o campo de verificação do codigo enviado via sms
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		E o usuario seleciona o campo de ramo e seleciona o ramo na modal exibida
		E o usuario aciona o botao de continuar
		E o usuario preenche os dados "cep" e "numero"
		E o usuario aciona o botao de continuar
		E o usuario preenche o codigo de verificacao enviado via sms 
		Entao o app apresenta o texto "Verificaçao de Segurança"
			
			
	Cenario: Validar a tentativa de cadastro com senha sem os caracteres exigidos
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		E o usuario seleciona o campo de ramo e seleciona o ramo na modal exibida
		E o usuario aciona o botao de continuar
		E o usuario preenche os dados "cep" e "numero"
		E o usuario aciona o botao de continuar
		E o usuario preenche o codigo de verificacao enviado via sms 
		E o usuario aciona o botao de continuar
		E o usuario preenche campo senha fora do padrao exigido "senha" e "confirmarSenha"	
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Senha requer tamanho entre 8 e 60 simbolos" ou "Senha requer ao menos 1 letra e 1 numero"
		
		
	Cenario: Validar a tentativa de cadastro com senha de confirmação difente da senha principal
		Quando o usuario acione o botao criar conta da pagina inicial
		Entoa o usuario seleciona botao nao sou cliente na modal apresentada
		Quando o usuario seleciona o modo do seu cadastro
		E o usuario seleciona o check box de concordo com politica
		E o usuario aciona o botao criar minha conta
		E o usuario preenche os dados "cpf", "nomeCompleto" e "dataNascimento"
		E o usuario aciona o botao de continuar
		E o usuario preneche os dados "celular"e "email"
		E o usuario aciona o botao de continuar
		E o usuario preneche o dado "nomeMae" 
		E o usuario aciona o botao de continuar
		E o usuario seleciona o campo de ramo e seleciona o ramo na modal exibida
		E o usuario aciona o botao de continuar
		E o usuario preenche os dados "cep" e "numero"
		E o usuario aciona o botao de continuar
		E o usuario preenche o codigo de verificacao enviado via sms 
		E o usuario aciona o botao de continuar
		E o usuario preenche campo senha fora do padrao exigido "senha" e "confirmarSenha"	
		E o usuario aciona o botao de continuar
		Entao o app apresenta a mensagem de alerta "Senhas de confirmação diferente"
		
		