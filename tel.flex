%%
%class tel
%unicode
%standalone // Execução independente do analisador sintático.


/* MACROS */
DIGITO        = [0-9]
DDI           = {DIGITO}{DIGITO}"+"
DDD           = "("{DIGITO}{3}")"
NUMERO           = {DIGITO} \s {DIGITO}{4}"-"{DIGITO}{4}

/* REGRAS */
%%

{DDI} \s {DDD} \s {NUMERO} {
  System.out.println("NUMERO DE TELEFONE RECONHECIDO: " + yytext());
}