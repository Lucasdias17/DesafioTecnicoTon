#language: pt
#enconding: UTF-8

@venda
Funcionalidade: Realizar venda pela maquininha

Contexto: 
	Dado que permita o acesso a localizacao
	E estou logado no app 
	
	
	Cenario: Venda de sucesso
		Quando aciono o botao de venda agora
		E informar o valor da venda
		E acionar o botao cobra
		E selecionar modo venda por maquinhinha
			E selecionar o modo de pagamento 
			E acionar o botao cobra
				Entao sera informado a mensagem para o cliente inserir o cartao e digita senha
				Quando o usuario digitar a senha corretamente
				Entao sera informado a mensagem de "transação realizada com sucesso!" deve ser exibida


		Cenario: Tentatica de venda com senha errada
		Quando aciono o botao de venda agora
		E informar o valor da venda
		E acionar o botao cobra
		E selecionar modo venda por maquinhinha
			E selecionar o modo de pagamento 
			E acionar o botao cobra
				Entao sera informado a mensagem para o cliente inserir o cartao e digita senha
				Quando o usuario digitar a senha errada
				Entao ficar informado mensagem para o cliente inserir o cartao e digita senha, por periodo de um minuto.
				Entao apos o tempo expirado, sera a informado a mensagem de "Falha na operação"
			
				
		Cenario: Tentatica de venda com cartao no modo pagamento errado
		Quando aciono o botao de venda agora
		E informar o valor da venda
		E acionar o botao cobra
		E selecionar modo venda por maquinhinha
			E selecionar o modo de pagamento 
			E acionar o botao cobra
				Entao sera informado a mensagem para o cliente inserir o cartao e digita senha
				Quando o cliente inserir o cartao diferente do modo de pagamento selecionado
				Entao sera a informado a mensagem de "Falha na operação"
				