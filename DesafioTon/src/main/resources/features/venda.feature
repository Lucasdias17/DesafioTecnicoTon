#language: pt
#enconding: UTF-8
#Author: Lucas Dias

@venda
Funcionalidade: Venda

Contexto: 
	Dado o usuario permita o acesso a localizacao
	E o usuario esteja realizado o login de sucesso
	E o usuario esteja com a maquinha configurada com celular
	
	
	Cenario: Venda de sucesso realizada pela maquininha
		Quando o usuario aciona o botao de vender agora
		E o usuario informar o valor da venda acima de noventa nove centavos
		E o usuario acionar o botao cobra
		E o usuario seleciona modo venda por maquinhinha
		E o usuario selecionar o modo de pagamento 
		E o usuario acionar o botao cobra
		Entao o app apresenta a mensagem para o usuario inserir o cartao na maquininha
		Quando o cliente digitar a senha corretamente
		Entao o app apresenta a mensagem transacao de sucesso	
	 
	 
	Cenario: Validacao de tantiva de venda com senha errada
		Quando o usuario aciona o botao de vender agora
		E o usuario informar o valor da venda acima de um real
		E o usuario acionar o botao cobra
		E o usuario seleciona modo venda por maquinhinha
		E o usuario selecionar o modo de pagamento 
		E o usuario acionar o botao cobra
		Entao o app apresenta a mensagem para o usuario inserir o cartao na maquininha
		Mas o cliente digitar a senha incorreta
		Entao o app ira esperar pelo periodo de dois minutos e logo ira apresentar a mensagem  de falha na operacao


	Cenario: Validacao de tantiva de venda com valor menor de um real
		Quando o usuario aciona o botao de vender agora
		E o usuario informar o valor da venda abaixo de um real
		Entao o app ira deixar o botao cobra desabilitado


	Cenario: Validacao de tantiva de venda com cartao no modo pagamento errado
		Quando o usuario aciona o botao de vender agora
		E o usuario informar o valor da venda acima de um real
		E o usuario acionar o botao cobra
		E o usuario seleciona modo venda por maquinhinha
		E o usuario selecionar o modo de pagamento 
		E o usuario acionar o botao cobra
		Entao o app apresenta a mensagem para o usuario inserir o cartao na maquininha
		Mas o cliente inserir o cartao diferente do modo de pagamento selecionado
		Entao o app ira apresentar a mensagem de falha na operacao
			
				