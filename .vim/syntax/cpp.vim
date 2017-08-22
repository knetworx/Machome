" Vim syntax file
" Language:	C++
" Maintainer:	Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2002 Jul 15

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" C++ extentions
syn keyword cppStatement	new gcnew delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType			inline virtual explicit export bool wchar_t uint8 uint32 farray varray
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match   cppCast			"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match   cppCast			"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false
" Scope resolution operator
syn match   cppCustSRO		"\<\i\+\(::\)\@=" contains=custOps,custOpPunc

" Types
syn match cppCustDecl		"\<\([A-Z][a-zA-Z0-9_]\+\)\([> )&*:,<;\n]\)\@=\>"
syn match cppCustDecl		"\(::\)\@<=\([a-zA-Z0-9_]\+\)\([> )&*:,<;\n]\)\@="
syn match cppCustDecl		"\(new\s\+\)\@<=\([a-zA-Z0-9_]\+\)"

" This one is a cast...		(classname *)
syn match   cppCustCast		"\([^a-zA-Z0-9_](\)\@<=\([a-zA-Z_][a-zA-Z0-9_:]*\)\(\s*\(\*\*\?\|&\))\)\@=" contains=custOps,cppCustSRO,custOpBitwise,custOpPunc
" This is for templates...	<classname *>
syn match   cppCustTemp		"\(<\s*\)\@<=\([a-zA-Z_][a-zA-Z0-9_:]*\)\(\s*\*\?>\)\@=" contains=custOps,cppCustSRO,custOpPunc
" (Forward) Declarations...	class classname
syn match   cppCustFwdDecl	"\(\(class\|struct\|enum\)\s\+\)\@<=\<\i\+\>"
" Templates again?		<classname *, classname2 *>
syn match   cppCustTemp		"\(<\s*\)\@<=\([a-zA-Z_][a-zA-Z0-9_:]*\)\(\s*\*\?\s*,\s*[a-zA-Z_][a-zA-Z0-9_:]*\s*\*\?\s*>\)\@=" contains=custOps,cppCustSRO,custOpPunc
" Typedefs...			typedef stuff classname;
syn match   cppCustTypeDef	"\(typedef\s\S\+\s\)\@<=\([a-zA-Z_][a-zA-Z0-9_:]*\)\(;\)\@=" contains=custOps,cppCustSRO,custOpPunc,cStructure
" Structs, enums...		} struct_or_enum_name;
syn match   cppCustEnumName	"\(}\s*\)\@<=\(\i\+\);\@="
syn match   cppFunctions	"\i\+\(\(<\i\+>\)\?(\)\@=" contains=cppCast,cppCustDecl
syn match   cppFunctions	"\(^\s*\)\@<=\([a-z]\i\+\)\(,\s*$\)\@="
" Function pointers		(*func)(arg1, arg2)
syn match   cppFunctions	"\((\*\)\@<=\(\i\+\)\()\s*(\)\@="
"syn match   cppCustDefines	"\(->\|\.\)\@<!\(\<[A-Z][A-Z0-9_]\+\>\)\(->\|\.\)\@!"
syn match   cppCustDefines	"\(->\|\.\)\@<!\(\<[A-Z_][A-Z0-9_]\+\>\)\(->\|\.\)\@!"
syn keyword cppBuildName	_DEBUG __RELEASE_FINAL
syn match   cppPreProcWords	"^\s*#\i\+"
syn match   cppPreProcWords	"^\s*#if !\?defined" contains=cppOperator,custOps
syn match   cppCustDefines	"\(^\s*#\i\+\)\@<=.\+" contains=cppOperator,custOps,cComment,cCommentL,cNumber,cNumbers,cppBuildName,cppPreProcWords,cIncluded,custOpMath,custOpBrackets,custOpComparator,custOpPunc
syn keyword cRepeat		foreach

syn region  cppSectionHeader	 start=+///+ end=+$+

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean
  HiLink cppBuildName	        cppType
  delcommand HiLink
endif

let b:current_syntax = "cpp"

" vim: ts=8
