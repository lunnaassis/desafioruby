#language: pt

@regressivo
Funcionalidade: Validar dados de Contato
Como um usuário visitante
Quero preencher dados
Para enviar mensagem no Fale Conosco

@validar_campos_invalidos
Cenario: Validar Campos Invalidos
Dado que acesso o Contato do Fale Conosco
Quando eu informo os campos <nome>,<email>,<assunto>,<mensagem> conforme arquivo
Então deve exibir no campo a mensagem de erro <msg_falha_campo>
Exemplos:
| nome          | email           | assunto            | mensagem           | msg_falha_campo                      |
| "nome_vazio"  | "email_valido"  | "assunto_valido"   | "mensagem_valida"  | "Preencha este campo"                |
| "nome_valido" | "email_vazio"   | "assunto_valido"   | "mensagem_valida"  | "Preencha este campo"                |
| "nome_valido" | "email_valido"  | "assunto_vazio"    | "mensagem_valida"  | "Preencha este campo"                |
| "nome_valido" | "email_valido"  | "assunto_valido"   | "mensagem_vazia"   | "Preencha este campo"                |
| "nome_valido" | "email_invalido"| "assunto_valido"   | "mensagem_valida"  | "Inclua um "@" no endereço de e-mail"|
     