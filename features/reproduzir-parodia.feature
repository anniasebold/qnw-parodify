#language:pt

  Funcionalidade: Reproduzir Paródia
      Sendo um usuário cadastrado
      Quero reproduzir músicas no player do Parodify
      Para que eu possa ouvir as paródias das minhas bandas favoritas

      Contexto: Login
        * Login com "annia@uol.com.br" e senha "secret123"

      @temp
      Cenário: Ouvir Paródia

          Dado que eu gosto muito de "Rock"
          Quando toco a seguinte canção:
              | parodia | Sprints de Luta Sprints de Gloria |
              | banda   | Charlie Brown Bug                 |
          Então essa paródia deve ficar em modo de reprodução