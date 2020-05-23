# Feature: Ainda é sexta-feira?
#     Todo mundo quer saber quando é sexta-feira.

# Scenario: Domingo não é sexta-feira
#     Given hoje é domingo
#     When pergunto se é sexta-feira ainda.
#     Then Então eu deveria dizer "Não"

# Scenario: Sexta-Feira é sexta-feira
#     Given hoje é sexta-feira
#     When pergunto se é sexta-feira ainda.
#     Then Então eu deveria dizer "Sim"


Feature: Ainda é sexta-feira?
    Todo mundo quer saber quando é sexta-feira.

Scenario Outline: Hoje é ou não é sexta-feira
    Given hoje é "<dia>"
    When pergunto se é sexta-feira ainda
    Then Então eu deveria dizer "<resposta>"

  Examples:
    | dia           | resposta |
    | sexta-feira   | Sim      |
    | domingo       | Não      |
    | sábado        | Não      |