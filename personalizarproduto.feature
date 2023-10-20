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
            Quando eu escolher entre <minimo> e <limite> produtos
            Então <quantidade> deve ser adicionada no carrinho

            | quantidade | minimo | limite |
            | 1          | 1      | 10     |
            | 2          | 1      | 10     |
            | 3          | 1      | 10     |
            | 4          | 1      | 10     |
            | 5          | 1      | 10     |
            | 6          | 1      | 10     |
            | 7          | 1      | 10     |
            | 8          | 1      | 10     |
            | 9          | 1      | 10     |
            | 10         | 1      | 10     |