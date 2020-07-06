module ast

pub type Node = LetStatement | ReturnStatement
pub type Statement = LetStatement | ReturnStatement
pub type Expression = LetStatement | ReturnStatement

pub struct Program {
	statements []Statement
}

pub fn (p Program) token_literals() string {
	if p.statements.len > 0 {
		return p.statements[0].token_literal()
	}
	return ''
}

struct Identifier {
	token token.Token
	value string
}

pub fn (ident Identifier) expression_node() {}

pub fn (ident Identifier) token_literal() string { return ident.token.literal }

pub struct LetStatement {
	token token.Token
	name Identifier
	value Expression
}