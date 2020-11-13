#language: pt

  Funcionalidade: Login
      Sendo um usuário previamente cadastrado
      Quero acessar o sistema com meu email e senha
      Para que eu possa ter acesso as playlists do Parodify

      Cenário: Login do usuário

        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "anniasebold@gmail.com" e "secret123"
        Então devo ser redirecionado para a área logada

      Esquema do Cenário: Tentativa de login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
          | email              | senha     |
          | annia123@gmail.com | secret123 |
          |                    |           |
          | annia@gmail.com    |           |
          | annia@gmail.com    | secret123 |