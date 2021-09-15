hi clear
syntax reset
set background=dark

" highlight function and colors definition {{{
function! Hi(group, styles)
	let l:gui = 'gui='   . get(a:styles, 'gui', 'NONE')
	let l:sp =  'guisp=' . get(a:styles, 'sp',  'NONE')
	let l:fg =  'guifg=' . get(a:styles, 'fg',  'NONE')
	let l:bg =  'guibg=' . get(a:styles, 'bg',  'NONE')

	execute 'highlight ' . a:group . ' ' . gui . ' ' . sp . ' ' . fg . ' ' . bg
endfunction

let s:bg_normal   = '#2A2F3B'
let s:bg_darker   = '#39404D'
let s:bg_dark     = '#2A2F3B'
let s:bg          = '#292d3e'
let s:bg_light    = '#39404D'
let s:bg_lighter  = '#454E63'
let s:grey        = '#919DB3'
let s:red         = '#cc5960'
let s:heavy_red   = '#9e242b'
let s:green       = '#65c96b'
let s:blue        = '#45b8e2'
let s:yellow      = '#e9b552'
let s:orange      = '#f25b4c'
let s:purple      = '#ad5be4'
let s:cyan        = '#6fbfe1'
let s:fg          = '#A8B5CD'
let s:fg_light    = '#a6accd'
let s:fg_dark     = '#9FABBF'
let s:vis         = '#424760'
let s:vis_light   = '#39404D'
let s:white       = '#DBE4F5'

" }}}

" Editor Highlight Groups {{{

call Hi('CursorLine'  , { 'bg': s:bg })
call Hi('Cursor'      , { 'fg': s:bg_dark, 'bg': s:yellow })
call Hi('Directory'   , { 'fg': s:blue, 'gui': 'bold' })
call Hi('DiffAdd'     , { 'fg': s:green })
call Hi('DiffChange'  , { 'fg': s:yellow })
call Hi('DiffDelete'  , { 'fg': s:red })
call Hi('DiffText'    , { 'fg': s:blue })
call Hi('EndOfBuffer' , { 'bg': s:bg_normal, 'fg': s:bg_dark })
call Hi('ErrorMsg'    , { 'fg': s:red, 'gui': 'bold' })
call Hi('VertSplit'   , { 'bg': s:bg_dark, 'fg': s:bg })
call Hi('Folded'      , { 'fg': s:fg_dark, 'gui': 'italic' })
call Hi('FoldColumn'  , { 'fg': s:yellow })
call Hi('SignColumn'  , { 'fg': s:yellow })
call Hi('IncSearch'   , { 'bg': s:yellow, 'fg': s:bg })
call Hi('Substitute'  , { 'bg': s:blue, 'fg': s:bg })
call Hi('LineNr'      , { 'fg': s:fg_dark })
call Hi('CursorLineNr', { 'fg': s:fg })
call Hi('MatchParen'  , { 'fg': "NONE", 'bg': s:bg_light })
call Hi('Normal'      , { 'fg': s:fg_light, 'bg': s:bg_normal })
call Hi('NormalFloat' , { 'bg': s:bg_darker })
call Hi('Pmenu'       , { 'bg': s:bg_darker, 'fg': s:fg_light })
call Hi('PmenuSel'    , { 'bg': s:cyan, 'fg': s:bg_lighter, 'gui': 'bold' })
call Hi('PmenuSbar'   , { 'bg': s:bg_lighter })
call Hi('PmenuThumb'  , { 'bg': s:fg })
call Hi('Search'      , { 'bg': s:vis })
call Hi('SpecialKey'  , { 'bg': s:fg_light })
call Hi('SpellBad'    , { 'gui': 'underline', 'sp': s:red })
call Hi('SpellCap'    , { 'gui': 'underline', 'sp': s:yellow })
call Hi('SpellLocal'  , { 'gui': 'underline', 'sp': s:orange })
call Hi('SpellRare'   , { 'gui': 'underline', 'sp': s:blue })
call Hi('TabLine'     , { 'bg': s:bg, 'fg': s:fg_light })
call Hi('TabLineFill' , { 'bg': s:bg, 'fg': s:fg_light })
call Hi('TabLineSel'  , { 'bg': s:cyan, 'fg': s:bg_dark })
call Hi('Title'       , { 'fg': s:green })
call Hi('Visual'      , { 'bg': s:vis_light })
call Hi('VisualNOS'   , { 'bg': s:vis_light })
call Hi('WarningMsg'  , { 'fg': s:yellow, 'gui': 'italic' })
call Hi('Whitespace'  , { 'fg': s:fg_dark })

" git highlighting
call Hi('gitcommitComment'        , { 'fg': s:fg_dark })
call Hi('gitcommitUntracked'      , { 'fg': s:fg_dark, 'gui': 'italic' })
call Hi('gitcommitDiscarded'      , { 'fg': s:fg_dark, 'gui': 'italic' })
call Hi('gitcommitSelected'       , { 'fg': s:fg_dark, 'gui': 'italic' })
call Hi('gitcommitUnmerged'       , { 'fg': s:green })
call Hi('gitcommitBranch'         , { 'fg': s:purple })
call Hi('gitcommitNoBranch'       , { 'fg': s:purple })
call Hi('gitcommitDiscardedType'  , { 'fg': s:red })
call Hi('gitcommitSelectedType'   , { 'fg': s:green })
call Hi('gitcommitUntrackedFile'  , { 'fg': s:cyan })
call Hi('gitcommitDiscardedFile'  , { 'fg': s:red })
call Hi('gitcommitDiscardedArrow' , { 'fg': s:red })
call Hi('gitcommitSelectedFile'   , { 'fg': s:green })
call Hi('gitcommitSelectedArrow'  , { 'fg': s:green })
call Hi('gitcommitUnmergedFile'   , { 'fg': s:yellow })
call Hi('gitcommitUnmergedArrow'  , { 'fg': s:yellow })
call Hi('gitcommitSummary'        , { 'fg': s:fg_light })
call Hi('gitcommitOverflow'       , { 'fg': s:red })
call Hi('gitcommitOnBranch'       , {})
call Hi('gitcommitHeader'         , {})
call Hi('gitcommitFile'           , {})

" User dependent groups, probably useless to change the default:
call Hi('Conceal'     , {})
call Hi('ModeMsg'     , {})
call Hi('MsgArea'     , {})
call Hi('MsgSeparator', {})
call Hi('MoreMsg'     , {})
call Hi('NonText'     , {})
call Hi('Question'    , {})
call Hi('QuickFixLine', {})
call Hi('StatusLine'  , {})
call Hi('StatusLineNC', {})
call Hi('WildMenu'    , {})

" }}}

" Vim Default Code Syntax {{{

call Hi('Comment'       , { 'fg': s:fg_dark })
call Hi('Constant'      , { 'fg': s:yellow })
call Hi('String'        , { 'fg': s:green })
call Hi('Character'     , { 'fg': s:green })
call Hi('Number'        , { 'fg': s:orange })
call Hi('Float'         , { 'fg': s:orange })
call Hi('Boolean'       , { 'fg': s:orange })

call Hi('Identifier'    , { 'fg': s:heavy_red })
call Hi('Function'      , { 'fg': s:cyan })

call Hi('Statement'     , { 'fg': s:blue })
call Hi('Conditional'   , { 'fg': s:purple })
call Hi('Repeat'        , { 'fg': s:purple })
call Hi('Label'         , { 'fg': s:cyan })
call Hi('Exception'     , { 'fg': s:cyan })
call Hi('Operator'      , { 'fg': s:purple })
call Hi('Keyword'       , { 'fg': s:heavy_red })

call Hi('Include'       , { 'fg': s:blue })
call Hi('Define'        , { 'fg': s:purple })
call Hi('Macro'         , { 'fg': s:purple })
call Hi('PreProc'       , { 'fg': s:yellow })
call Hi('PreCondit'     , { 'fg': s:yellow })

call Hi('Type'          , { 'fg': s:yellow })
call Hi('StorageClass'  , { 'fg': s:yellow })
call Hi('Structure'     , { 'fg': s:yellow })
call Hi('Typedef'       , { 'fg': s:yellow })

call Hi('Special'       , { })
call Hi('SpecialChar'   , { })
call Hi('Tag'           , { 'fg': s:orange })
call Hi('SpecialComment', { 'fg': s:fg_dark, 'gui': 'bold' })
call Hi('Debug'         , {})
call Hi('Delimiter'     , {})

call Hi('Ignore'        , {})
call Hi('Underlined'    , { 'gui': 'underline' })
call Hi('Error'         , { 'fg': s:heavy_red })
call Hi('Todo'          , { 'fg': s:purple, 'gui': 'bold' })

" }}}

" Lsp Highlight {{{

call Hi('LspDiagnosticsDefaultError'      , { 'fg': s:red })
call Hi('LspDiagnosticsDefaultWarning'    , { 'fg': s:yellow })
call Hi('LspDiagnosticsDefaultHint'       , { 'fg': s:green })
call Hi('LspDiagnosticsDefaultMessage'    , { 'fg': s:fg })

call Hi('LspDiagnosticsFloatingError'     , { 'fg': s:red,    'gui': 'underline' })
call Hi('LspDiagnosticsFloatingWarning'   , { 'fg': s:yellow, 'gui': 'underline' })
call Hi('LspDiagnosticsFloatingHint'      , { 'fg': s:green,  'gui': 'underline' })
call Hi('LspDiagnosticsFloatingMessage'   , { 'fg': s:fg,     'gui': 'underline' })

call Hi('LspDiagnosticsSignError'         , { 'fg': s:red,    'gui': 'italic' })
call Hi('LspDiagnosticsSignWarning'       , { 'fg': s:yellow, 'gui': 'italic' })
call Hi('LspDiagnosticsSignHint'          , { 'fg': s:green,  'gui': 'italic' })
call Hi('LspDiagnosticsSignMessage'       , { 'fg': s:fg,     'gui': 'italic' })

call Hi('LspDiagnosticsUnderlineError'    , { 'gui': 'underline' })
call Hi('LspDiagnosticsUnderlineWarning'  , { 'gui': 'underline' })
call Hi('LspDiagnosticsUnderlineHint'     , { 'gui': 'underline' })
call Hi('LspDiagnosticsUnderlineMessage'  , { 'gui': 'underline' })

call Hi('LspDiagnosticsVirtualTextError'  , { 'fg': s:red,    'gui': 'bold' })
call Hi('LspDiagnosticsVirtualTextWarning', { 'fg': s:yellow, 'gui': 'bold' })
call Hi('LspDiagnosticsVirtualTextHint'   , { 'fg': s:green,  'gui': 'bold' })
call Hi('LspDiagnosticsVirtualTextMessage', { 'fg': s:fg,     'gui': 'bold' })

" }}}

" tree-sitter highlight {{{

call Hi("TSCharacter",       { 'fg': s:green, 'gui': 'bold' })

call Hi("TSAnnotation",      { 'fg': s:red    })
call Hi("TSBoolean",         { 'fg': s:orange })
call Hi("TSConstBuiltin",    { 'fg': s:blue   })
call Hi("TSConstMacro",      { 'fg': s:blue   })
call Hi("TSConstructor",     { 'fg': s:yellow })
call Hi("TSFuncBuiltin",     { 'fg': s:blue   })
call Hi("TSVariableBuiltin", { 'fg': s:blue   })

" }}}

" Vim terminal colors {{{

let g:terminal_color_0          = s:bg_dark
let g:terminal_color_1          = s:red
let g:terminal_color_2          = s:green
let g:terminal_color_3          = s:yellow
let g:terminal_color_4          = s:blue
let g:terminal_color_5          = s:purple
let g:terminal_color_6          = s:cyan
let g:terminal_color_7          = s:fg
let g:terminal_color_8          = s:grey
let g:terminal_color_9          = s:red
let g:terminal_color_10         = s:green
let g:terminal_color_11         = s:orange
let g:terminal_color_12         = s:blue
let g:terminal_color_13         = s:purple
let g:terminal_color_14         = s:cyan
let g:terminal_color_15         = s:white
let g:terminal_color_background = s:bg_dark
let g:terminal_color_foreground = s:fg_light

" }}}


delfunction Hi