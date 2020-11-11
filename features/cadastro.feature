#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify (Ator)
    Quero fazer o meu cadastro (Aquilo que vai ser desenvolvido)
    Para que eu possa ouvir minhas músicas favoritas (Valor de Negócio)

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | annia@gmail.com |
            | senha          | secret123       |
            | confirma_senha | secret123       |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | confirma_senha | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email           | senha     | confirma_senha | mensagem_saida                       |
            |                 | secret123 | secret123      | Oops! Informe seu email.             |
            | annia@gmail.com |           |                | Oops! Informe sua senha.             |
            | annia@gmail.com | secret123 | abc1234        | Oops! Senhas não são iguais.         |
            |                 |           |                | Oops! Informe seu email e sua senha. |