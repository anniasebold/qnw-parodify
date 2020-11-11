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

Cenário: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          |                 |
        | senha          | secret123       |
        | confirma_senha | secret123       |
    Então devo ver a mensagem: "Oops! Informe seu email."

Cenário: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          | annia@gmail.com |
        | senha          |                 |
        | confirma_senha |                 |
    Então devo ver a mensagem: "Oops! Informe sua senha."

Cenário: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          | annia@gmail.com |
        | senha          | secret123       |
        | confirma_senha | abc1234         |
    Então devo ver a mensagem: "Oops! Senhas não são iguais."

Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          |                 |
        | senha          |                 |
        | confirma_senha |                 |
    Então devo ver a mensagem: "Oops! Informe seu email e sua senha."
