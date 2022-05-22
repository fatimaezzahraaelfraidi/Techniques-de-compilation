%option noyywrap
%{
	#include<stdio.h>
%}

%%
[A-Za-z0-9]+([_]?[A-Za-z0-9]+)*		{printf("\n%s Valide",yytext);}
[_](.)*					{printf("\n%s erreur! ",yytext);}
(.)*[_]					{printf("\n%s erreur! ",yytext);}
[A-Za-z0-9]+([_]{2,}[A-Za-z0-9]+)*		{printf("\n%s erreur! ",yytext);}
. {printf("\n%s erreur! ",yytext);}
%%
int main()
{
	FILE *fp;
	fp = fopen("C:\\Users\\dell\\Desktop\\flex\\tp1Exo3.txt","r+");
	yyin = fp;
	 yylex();// meth pricipale qui permet de lancer un programme lex
	fclose(fp);
	return 0;
}