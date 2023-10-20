            #language: pt

            Funcionalidade: Tela de cadastro e checkout
            Como usuario da EBAC-SHOP
            Quero fazer um cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu abra a aba de cadastro

            Cenário: Cadastrado apenas preenchendo todos os dados obrigatórios
            Quando eu preencher todos os dados obrigatórios que estarão marcados com asteriscos
            Então o cadastro deve ser efetado com sucesso

            Cenário: Campo email com formato inválido
            Quando eu inserir um formato inválido de email
            Então o sistema deve inserir uma mensagem de erro

            Esquema do Cenário: Campos vazios
            Quando <campo> estiver vazio
            Então o sistema deve exibir <alerta>

            | campo          | alerta                       |
            | Não preenchido | Um campo não foi preenchido! |
            | Preenchido     | (Não deve ser exibido)       |