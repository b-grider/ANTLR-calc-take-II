grammar logic;

	/*PARSER RULES*/

/*https://github.com/jknack/antlr4ide*/

read
	:comparison
	;
	
comparison
	:	greaterthan
	|	lessthan
	|	isequal
	|	notequal
	;
	
greaterthan
	:'('? num '>' num ')'?
	;
	
lessthan
	:'('? num '<' num ')'?
	;
	
isequal
	:'('? num '==' num ')'?
	;
	
notequal
	:'('? num '!=' num ')'?
	;
	
num
	:Int
	;
	
	/*LEXER RULE-YOU CAN TELL BECASUE IT'S CAPITALIZED*/
	
Int
	: '-'? ('0'..'9')+
	;
	
WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines, \r (Windows)