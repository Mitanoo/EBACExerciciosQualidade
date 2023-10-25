            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha um produto

            Cenário: Botão de limpar a seleção
            Quando eu clicar no botão "limpar"
            Então a seleção deve voltar ao estado original

            Cenário: Seleção de cores
            Quando eu escolher a cor
            Então o produto deve ser da cor selecionada

            Cenário: Seleção de tamanho
            Quando eu escolher o tamanho
            Então o produto deve ser do tamanho selecionado

            Cenário: Seleção de quantidade
            Quando eu escolher a quantidade
            Então o produto deve ser considerado mais de um no carrinho

            Esquema do Cenário: Permitir até o limite de 10 produtos
            Quando eu escolher <quantidade>
            Então <acao> deve acontecer

            | quantidade | acao         |
            | 0          | não permitir |
            | 1          | permitir     |
            | 2          | permitir     |
            | 5          | permitir     |
            | 9          | permitir     |
            | 10         | permitir     |
            | 11         | não permitir |
            | 18         | não permitir |