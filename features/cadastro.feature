#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify (Ator)
    Quero fazer o meu cadastro (Aquilo que vai ser desenvolvido)
    Para que eu possa ouvir minhas músicas favoritas (Valor de Negócio)

Cenário: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email, senha e confirmação da senha
    Então devo ser redirecionado para a área logada

Cenário: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email
    Então devo ver Oops! Informe seu email

Cenário: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então devo ver Oops! Informe sua senha

Cenário: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver Oops! Senhas não são iguais

Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
