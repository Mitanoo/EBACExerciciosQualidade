            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha um produto

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


            Cenário: Botão de limpar a seleção
            Quando eu clicar no botão "limpar"
            Então a seleção deve voltar ao estado original

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Quando eu acessar a plataforma

            Esquema do Cenário: Dados válidos inseridos
            Quando eu inserir "bungas@gmail.com"
            E também inserir a "lalau123"
            Então deve exibir de "Boas vindas!" do sistema

            Cenário: Usuário inválido inserido
            Quando eu inserir "bungas_errado@gmail.com"
            E também inserir a "lalau123"
            Então deve exibir de "Usuário inválido" do sistema

            Cenário: Senha inválida inserida
            Quando eu inserir "bungas@gmail.com"
            E também inserir a senha "lalau123_errado"
            Então deve exibir a mensagem "Senha incorreta" do sistema

            Esquema do Cenário: Autenticando vários usuários
            Quando eu inserir <usuario>
            E também inserir <senha>
            Então deve ser exibida a mensagem <mensagem> do sistema


            | usuario                   | senha             | mensagem           |
            | "bungas@gmail.com"        | "lalau123"        | "Olá Bungas!"      |
            | "fafas@gmail.com"         | "lalau123"        | "Olá Bungas!"      |
            | "bungas_errado@gmail.com" | "lalau123"        | "Usuário inválido" |
            | "fafas8@gmail.com"        | "lalau123"        | "Usuário inválido" |
            | "bungas@gmail.com"        | "lalau123_errado" | "Senha incorreta"  |
            | "fafas@gmail.com"         | "lalau1234"       | "Senha incorreta"  |

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