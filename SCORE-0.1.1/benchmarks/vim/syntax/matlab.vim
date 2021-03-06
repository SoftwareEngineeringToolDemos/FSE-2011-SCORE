" Vim syntax file
" Language:	Matlab
" Maintainer:	Preben "Peppe" Guldberg <c928400@student.dtu.dk>
"		Original author: Mario Eusebio
" Last change:	Fri Jan 30 02:36:39 1998

" Remove any old syntax stuff hanging around
syn clear

syn keyword matlabStatement		continue return
syn keyword matlabLabel			case switch
syn keyword matlabConditional		else elseif end if otherwise
syn keyword matlabRepeat		do for while

syn keyword matlabTodo 			contained  TODO

" If you do not want these operators lit, uncommment them and the "hi link" below
syn match matlabArithmeticOperator	"[-+]"
syn match matlabArithmeticOperator	"\.\=[*/\\^]"
syn match matlabRelationalOperator	"[=~]="
syn match matlabRelationalOperator	"[<>]=\="
syn match matlabLogicalOperator    	"[&|~]"

syn match matlabLineContinuation	"\.\.\."

"syn match matlabIdentifier		"\<[a-zA-Z_][a-zA-Z0-9_]*\>"

" String
syn region matlabString			start=+'+ end=+'+	oneline

" If you don't like tabs
syn match matlabTab			"\t"

" Standard numbers
syn match matlabNumber		"\<[0-9]\+[ij]\=\>"
" floating point number, with dot, optional exponent
syn match matlabFloat		"\<[0-9]\+\.[0-9]*\([edED][-+]\=[0-9]\+\)\=[ij]\=\>"
" floating point number, starting with a dot, optional exponent
syn match matlabFloat		"\.[0-9]\+\([edED][-+]\=[0-9]\+\)\=[ij]\=\>"
" floating point number, without dot, with exponent
syn match matlabFloat		"\<[0-9]\+[edED][-+]\=[0-9]\+[ij]\=\>"

" Transpose character and delimiters: Either use just [...] or (...) aswell
syn match matlabDelimiter		"[][]"
"syn match  matlabDelimiter		"[][()]"
syn match matlabTransposeOperator	"[])a-zA-Z0-9.]'"lc=1

syn match matlabComment		"%.*$"	contains=matlabTodo,matlabTab

syn keyword matlabOperator		break zeros default margin round
syn keyword matlabOperator		ceil floor size clear zeros eye mean

syn keyword matlabFunction		error eval function

syn keyword matlabImplicit		abs acos atan asin cos cosh exp log
syn keyword matlabImplicit		log10 max min sign sin sqrt tan

syn match matlabError	"-\=\<[0-9]\+\.[0-9]\+\.[^*/\\^]"
syn match matlabError	"-\=\<[0-9]\+\.[0-9]\+[eEdD][-+]\=[0-9]\+\.\([^*/\\^]\)"

if !exists("did_matlab_syntax_inits")
  let did_matlab_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  hi link matlabTransposeOperator	matlabOperator
  hi link matlabOperator		Operator
  hi link matlabLineContinuation	Special
  hi link matlabLabel			Label
  hi link matlabConditional		Conditional
  hi link matlabRepeat			Repeat
  hi link matlabTodo			Todo
  hi link matlabString			String
  hi link matlabDelimiter		Identifier
  hi link matlabTransposeOther		Identifier
  hi link matlabNumber			Number
  hi link matlabFloat			Float
  hi link matlabFunction		Function
  hi link matlabError			Error
  hi link matlabImplicit		matlabStatement
  hi link matlabStatement		Statement
  hi link matlabComment			Comment

  hi link matlabArithmeticOperator	matlabOperator
  hi link matlabRelationalOperator	matlabOperator
  hi link matlabLogicalOperator		matlabOperator

"optional highlighting
  "hi link matlabIdentifier		Identifier
  "hi link matlabTab			Error
endif

let b:current_syntax = "matlab"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
