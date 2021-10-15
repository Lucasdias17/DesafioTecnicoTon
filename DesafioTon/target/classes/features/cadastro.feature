#language: pt
#enconding: UTF-8

@cadastro
Funcionalidade: Casdastro

Contexto: 
	Dado que permita o acesso a localizacao
	
	
	Esquema do Cenario: Cadastro sucesso
		Dado que estou acessando o app Ton 
		Quando que aciono o botao criar conta da pagina inicial
		E aciono o botao nao sou cliente
		E seleciono o modo do seu cadastro
		E seleciono o check box de concordo com politica
		E aciono o botao criar minha conta
			E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
			E aciono o botao de continuar
				E preencho os dados "<celular>"e "<email>"
				E aciono o botao de continuar
					E preencho os dado "<nomeMae>" 
					E aciono o botao de continuar
						E seleciono ramo
						E aciono o botao de continuar
							E preencho os dados "<cep>" e "<numero>"
							E aciono o botao de continuar
								E prenencho o codigo de verificacao 
								E aciono o botao de continuar
									E preencho os dados de "<senha>" e "<confirmarSenha>"	
									E aciono o botao de criar senha
									Entao e efetuado o cadastro de sucesso e acessar o app
		Exemplos:
		|cpf |comeCompleto |dataNascimento |celular |email |nomeMae |cep |numero |senha |confirmarSenha|
		|		 |						 |							 |				|			 |				|    |			 |			|							 |


		Esquema do Cenario: Tentativo de cadastro com cpf invalido
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
				Entao a mensagem de alerta "CPF invalido" 
			Exemplos:
			|cpf |comeCompleto |dataNascimento |
			|		 |						 |							 |
	
		
		Esquema do Cenario: Tentativa de cadastro com nome sem o sobrenome
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
				Entao a mensagem de alerta "Nome está incompleto. Digite o nome e sobrenome"  deve ser exibida
			Exemplos:
			|cpf |comeCompleto |dataNascimento |
			|		 |						 |							 |
		
		
		Esquema do Cenario: Tentativa de cadastro com a data nascimento diferente do cpf
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
				Entao a mensagem de alerta "Sua data de nascimento pode estar errado"  deve ser exibida
			Exemplos:
			|cpf |comeCompleto |dataNascimento |
			|		 |						 |							 |
	
	
		Esquema do Cenario: Tentativa de cadastro com email invalido
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
					E preencho os dados "<celular>"e "<email>"
					E aciono o botao de continuar
					Entao a mensagem de alerta "Email inválido" deve ser exibida
			Exemplos:
			|cpf |comeCompleto |dataNascimento |celular |email |
			|		 |						 |							 |				|			 |
	
	
		Esquema do Cenario: Tentativa de cadastro com cep invalido
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
					E preencho os dados "<celular>"e "<email>"
					E aciono o botao de continuar
						E preencho os dado "<nomeMae>" 
						E aciono o botao de continuar
							E seleciono ramo
							E aciono o botao de continuar
								E preencho os dados "<cep>" e "<numero>"
								E aciono o botao de continuar
								Entao a mensagem de alerta "CEP inválido" deve ser exibida
			Exemplos:
			|cpf |comeCompleto |dataNascimento |celular |email |nomeMae |cep |numero |
			|		 |						 |							 |				|			 |				|    |			 |
			
			
		Esquema do Cenario: Tentativa de cadastro com senha sem os caracteres exigidos
			Dado que estou acessando o app Ton 
			Quando que aciono o botao criar conta da pagina inicial
			E aciono o botao nao sou cliente
			E seleciono o modo do seu cadastro
			E seleciono o check box de concordo com politica
			E aciono o botao criar minha conta
				E preencho os dados "<cpf>", "<nomeCompleto>" e "<dataNascimento>"
				E aciono o botao de continuar
					E preencho os dados "<celular>"e "<email>"
					E aciono o botao de continuar
						E preencho os dado "<nomeMae>" 
						E aciono o botao de continuar
							E seleciono ramo
							E aciono o botao de continuar
								E preencho os dados "<cep>" e "<numero>"
								E aciono o botao de continuar
									E preencho o codigo de verificacao 
									E aciono o botao de continuar
										E preencho os dados de "<senha>" e "<confirmarSenha>"	
										E aciono o botao de criar senha
										Entao a mensagem de alerta "Senha requer tamanho entre 8 e 60 simbolos" ou "Senha requer ao menos 1 letra e 1 numero" deve ser exibida
			Exemplos:
			|cpf |comeCompleto |dataNascimento |celular |email |nomeMae |cep |numero |senha |confirmarSenha|
			|		 |						 |							 |				|			 |				|    |			 |			|							 |