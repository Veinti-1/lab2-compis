/*%{
	#define NUM 251
%}*/
verdadero true
falso false
o or
y and
no not

%%
[ \t]		; { /* Espacios en blanco */ }
{verdadero}	{ 
				yylval = 1;
				return true; 
			}
{falso}	{ 
				yylval = 0;
				return false; 
			}
{o} {return or;}
{y} {return and;}
{no} {return not;}
[\)\(*/\n]	return yytext[0];
.		printf("Error\n");
%%

int yywrap(void)
{
	return 0;
}
