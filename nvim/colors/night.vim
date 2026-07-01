" Name:         night
" Description:  A very minimal 3-bit colorscheme.
" Author:       Nace Zavrtanik <zavrtaniknace@gmail.com>
" Website:      https://www.github.com/nacezavrtanik/dotfiles
" License:      MIT

" The 4-bit ANSI colors, as well as the backround color, are inherited from
" the terminal theme. The `night` colorscheme presupposes that the terminal
" background corresponds to ANSI code 0, and that the inherited ANSI colors
" are in fact the same color in varying levels of brightness, with brightness
" gradually increasing with respect to the color's code (0 the darkest, 8 the
" brightest).

set background=dark

hi clear
let g:colors_name = 'night'


hi! link helpVim Title
hi! link helpHeader Title
hi! link helpHyperTextJump Underlined
hi! link fugitiveSymbolicRef PreProc
hi! link fugitiveHeading Statement
hi! link fugitiveStagedHeading Statement
hi! link fugitiveUnstagedHeading Statement
hi! link fugitiveUntrackedHeading Statement
hi! link fugitiveStagedModifier PreProc
hi! link fugitiveUnstagedModifier PreProc
hi! link fugitiveHash Constant
hi! link diffFile PreProc
hi! link markdownHeadingDelimiter Special
hi! link rstSectionDelimiter Statement
hi! link rstDirective PreProc
hi! link rstHyperlinkReference Special
hi! link rstFieldName Constant
hi! link rstDelimiter Special
hi! link rstInterpretedText Special
hi! link rstCodeBlock Normal
hi! link rstLiteralBlock rstCodeBlock
hi! link markdownUrl String
hi! link colortemplateKey Statement
hi! link xmlTagName Statement
hi! link javaScriptFunction Statement
hi! link javaScriptIdentifier Statement
hi! link sqlKeyword Statement
hi! link yamlBlockMappingKey Statement
hi! link rubyMacro Statement
hi! link rubyDefine Statement
hi! link vimGroup Normal
hi! link vimVar Normal
hi! link vimOper Normal
hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimOption Normal
hi! link vimCommentString Comment
hi! link pythonInclude Statement
hi! link shQuote Constant
hi! link shNoQuote Normal
hi! link shTestOpr Normal
hi! link shOperator Normal
hi! link shSetOption Normal
hi! link shOption Normal
hi! link shCommandSub Normal
hi! link shDerefPattern shQuote
hi! link shDerefOp Special
hi! link phpStorageClass Statement
hi! link phpStructure Statement
hi! link phpInclude Statement
hi! link phpDefine Statement
hi! link phpSpecialFunction Normal
hi! link phpParent Normal
hi! link phpComparison Normal
hi! link phpOperator Normal
hi! link phpVarSelector Special
hi! link phpMemberSelector Special
hi! link phpDocCustomTags phpDocTags
hi! link javaExternal Statement
hi! link javaType Statement
hi! link javaScopeDecl Statement
hi! link javaClassDecl Statement
hi! link javaStorageClass Statement
hi! link javaDocParam PreProc
hi! link csStorage Statement
hi! link csAccessModifier Statement
hi! link csClass Statement
hi! link csModifier Statement
hi! link csAsyncModifier Statement
hi! link csLogicSymbols Normal
hi! link csClassType Normal
hi! link csType Statement
hi! link Terminal Normal
hi! link StatuslineTerm Statusline
hi! link StatuslineTermNC StatuslineNC
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link markdownRule markdownListMarker
hi! link markdownCode String
hi! link markdownCodeBlock String
hi! link PmenuKind PmenuInfo
hi! link PmenuExtra PmenuInfo
hi! link PmenuKindSel PmenuInfoSel
hi! link PmenuExtraSel PmenuInfoSel
hi! link VisualNOS Visual
hi! link lCursor Cursor
hi! link TermCursor Cursor
hi! link VertSplit WinSeparator
hi! link Special Constant


hi! link debugPC                   Normal
hi! link debugBreakpoint           Normal
hi! link SpellBad                  Normal
hi! link SpellCap                  Normal
hi! link SpellLocal                Normal
hi! link SpellRare                 Normal
hi! link SignColumn                Normal
hi! link diffAdded                 Normal
hi! link diffRemoved               Normal
hi! link diffSubname               Normal
hi! link dirType                   Normal
hi! link dirPermissionUser         Normal
hi! link dirPermissionGroup        Normal
hi! link dirPermissionOther        Normal
hi! link dirOwner                  Normal
hi! link dirGroup                  Normal
hi! link dirTime                   Normal
hi! link dirSize                   Normal
hi! link dirSizeMod                Normal
hi! link FilterMenuDirectorySubtle Normal
hi! link dirFilterMenuBookmarkPath Normal
hi! link dirFilterMenuHistoryPath  Normal
hi! link FilterMenuLineNr          Normal
hi! link CocSearch                 Normal
hi! link Ignore                    Normal
hi! link Conceal                   Normal
hi! link Type                      Normal
hi! link PreProc                   Normal


" MARKDOWN
" Analogous markdown highlights are linked to these groups.
hi htmlBold                ctermfg=none ctermbg=none cterm=bold
hi htmlItalic              ctermfg=none ctermbg=none cterm=italic
hi htmlUnderline           ctermfg=none ctermbg=none cterm=underline
hi htmlBoldItalic          ctermfg=none ctermbg=none cterm=bold,italic
hi htmlBoldUnderline       ctermfg=none ctermbg=none cterm=bold,underline
hi htmlItalicUnderline     ctermfg=none ctermbg=none cterm=italic,underline
hi htmlBoldItalicUnderline ctermfg=none ctermbg=none cterm=bold,italic,underline
" Treesitter highlights.
hi! link @markup.heading.1             CyanOnNoneBold
hi! link @markup.heading.2             CyanOnNoneBold
hi! link @markup.heading.3             CyanOnNoneBoldItalic
hi! link @markup.heading.4             CyanOnNoneBoldItalic
hi! link @markup.heading.5             CyanOnNoneItalic
hi! link @markup.heading.6             CyanOnNoneItalic
hi! link @markup.link                  CyanOnNoneItalic
hi! link @markup.link.label            CyanOnNoneItalic
hi! link @markup.link.url              RedOnNoneItalicUnderline
hi! link @markup.list                  CyanOnNone
hi! link @markup.list.checked          CyanOnNone
hi! link @markup.list.unchecked        CyanOnNone
hi! link @markup.raw                   YellowOnNone
hi! link @markup.quote                 YellowOnNoneItalic
hi! link @markup.math                  YellowOnNoneItalic
hi! link @label.markdown               RedOnNone
hi! link @punctuation.special.markdown RedOnNone

hi! link @comment.error   Todo
hi! link @comment.warning Todo
hi! link @comment.todo    Todo
hi! link @comment.note    Note

hi! link StatuslineNC  MagentaOnNone
hi! link TabLine       MagentaOnNone
hi! link WildMenu      WhiteOnGreenBold
hi! link Title         CyanOnNoneBold
hi! link Identifier    MagentaOnNone
hi! link Function      CyanOnNoneBold
hi! link QuickFixLine  WhiteOnGreen
hi! link Pmenu         MagentaOnRed
hi! link PmenuInfo     GreenOnRedItalic
hi! link PmenuThumb    MagentaOnMagenta
hi! link TabLineFill   BlackOnNone
hi! link WinSeparator  BlackOnNone
hi! link FoldColumn    BlackOnNone
hi! link NonText       RedOnNoneItalic
hi! link SpecialKey    RedOnNoneItalic
hi! link EndOfBuffer   RedOnNoneItalic
hi! link Comment       RedOnNoneItalic
hi! link Folded        RedOnNoneItalic
hi! link PmenuSel      RedOnMagenta
hi! link ComplMatchIns RedOnMagenta
hi! link PreInsert     RedOnMagenta
hi! link Statusline    BlackOnMagentaBold
hi! link TabLineSel    BlackOnMagentaBold
hi! link PmenuInfoSel  RedOnMagentaItalic
hi! link PmenuSbar     RedOnRed
hi! link ColorColumn   NoneOnRed
hi! link CursorColumn  NoneOnRed
hi! link CursorLine    NoneOnRed

hi! link Search       BlackOnGreen
hi! link CursorLineNr WhiteOnNoneBold
hi! link MatchParen   WhiteOnGreenBold
hi! link CurSearch    BlackOnCyanBold
hi! link LineNr       RedOnNone
hi! link IncSearch    BlackOnWhite
hi! link Cursor       BlackOnWhite
hi! link Visual       BlackOnWhite

hi! link ModeMsg      WhiteOnNoneBoldReverse
hi! link ErrorMsg     WhiteOnNoneBold
hi! link WarningMsg   WhiteOnNone
hi! link Error        WhiteOnNone
hi! link Todo         WhiteOnNoneItalic
hi! link Note         WhiteOnNoneItalic
hi! link OkMsg        BlueOnNone
hi! link MoreMsg      BlueOnNoneItalic
hi! link Question     BlueOnNoneItalic
hi! link Directory    BlueOnNoneBold

hi! link Statement YellowOnNone
hi! link Constant  YellowOnNoneItalic
hi! link String    YellowOnNoneItalic

hi! link DiffAdd    WhiteOnYellow
hi! link DiffText   WhiteOnYellow
hi! link DiffChange YellowOnRed
hi! link DiffDelete BlackOnNone

" We intentionally omit configuring the Normal highlight group, so the default
" background and foreground are inherited from the terminal theme.
hi NoneOnNoneReverse                ctermfg=none ctermbg=none cterm=reverse
hi NoneOnBlack                      ctermfg=none ctermbg=0    cterm=none
hi NoneOnRed                        ctermfg=none ctermbg=1    cterm=none
hi NoneOnBrightBlack                ctermfg=none ctermbg=8    cterm=none
hi BlackOnNone                      ctermfg=0    ctermbg=none cterm=none
hi BlackOnNoneItalic                ctermfg=0    ctermbg=none cterm=italic
hi BlackOnNoneItalicUnderline       ctermfg=0    ctermbg=none cterm=italic,underline
hi BlackOnBlack                     ctermfg=0    ctermbg=0    cterm=none
hi BlackOnRed                       ctermfg=0    ctermbg=1    cterm=none
hi BlackOnGreen                     ctermfg=0    ctermbg=2    cterm=none
hi BlackOnYellow                    ctermfg=0    ctermbg=3    cterm=none
hi BlackOnBlue                      ctermfg=0    ctermbg=4    cterm=none
hi BlackOnMagenta                   ctermfg=0    ctermbg=5    cterm=none
hi BlackOnMagentaBold               ctermfg=0    ctermbg=5    cterm=bold
hi BlackOnCyanBold                  ctermfg=0    ctermbg=6    cterm=bold
hi BlackOnWhite                     ctermfg=0    ctermbg=7    cterm=none
hi BlackOnWhiteBold                 ctermfg=0    ctermbg=7    cterm=bold
hi BlackOnWhiteItalic               ctermfg=0    ctermbg=7    cterm=italic
hi RedOnNone                        ctermfg=1    ctermbg=none cterm=none
hi RedOnNoneBold                    ctermfg=1    ctermbg=none cterm=bold
hi RedOnNoneBoldReverse             ctermfg=1    ctermbg=none cterm=bold,reverse
hi RedOnNoneItalic                  ctermfg=1    ctermbg=none cterm=italic
hi RedOnNoneItalicUnderline         ctermfg=1    ctermbg=none cterm=italic,underline
hi RedOnRed                         ctermfg=1    ctermbg=1    cterm=none
hi RedOnMagenta                     ctermfg=1    ctermbg=5    cterm=none
hi RedOnMagentaItalic               ctermfg=1    ctermbg=5    cterm=italic
hi RedOnWhite                       ctermfg=1    ctermbg=7    cterm=none
hi RedOnWhiteItalic                 ctermfg=1    ctermbg=7    cterm=italic
hi GreenOnNone                      ctermfg=2    ctermbg=none cterm=none
hi GreenOnNoneBold                  ctermfg=2    ctermbg=none cterm=bold
hi GreenOnRedItalic                 ctermfg=2    ctermbg=1    cterm=italic
hi YellowOnNone                     ctermfg=3    ctermbg=none cterm=none
hi YellowOnNoneBold                 ctermfg=3    ctermbg=none cterm=bold
hi YellowOnNoneItalic               ctermfg=3    ctermbg=none cterm=italic
hi YellowOnRed                      ctermfg=3    ctermbg=1    cterm=none
hi YellowOnBlueBold                 ctermfg=3    ctermbg=4    cterm=bold
hi BlueOnNone                       ctermfg=4    ctermbg=none cterm=none
hi BlueOnNoneBold                   ctermfg=4    ctermbg=none cterm=bold
hi BlueOnNoneItalic                 ctermfg=4    ctermbg=none cterm=italic
hi MagentaOnNone                    ctermfg=5    ctermbg=none cterm=none
hi MagentaOnNoneBold                ctermfg=5    ctermbg=none cterm=bold
hi MagentaOnNoneBoldItalic          ctermfg=5    ctermbg=none cterm=bold,italic
hi MagentaOnNoneItalic              ctermfg=5    ctermbg=none cterm=italic
hi MagentaOnRed                     ctermfg=5    ctermbg=1    cterm=none
hi MagentaOnMagenta                 ctermfg=5    ctermbg=5    cterm=none
hi CyanOnNone                       ctermfg=6    ctermbg=none cterm=none
hi CyanOnNoneBold                   ctermfg=6    ctermbg=none cterm=bold
hi CyanOnNoneBoldItalic             ctermfg=6    ctermbg=none cterm=bold,italic
hi CyanOnNoneItalic                 ctermfg=6    ctermbg=none cterm=italic
hi CyanOnRed                        ctermfg=6    ctermbg=1    cterm=none
hi CyanOnCyan                       ctermfg=6    ctermbg=6    cterm=none
hi WhiteOnNone                      ctermfg=7    ctermbg=none cterm=none
hi WhiteOnNoneBold                  ctermfg=7    ctermbg=none cterm=bold
hi WhiteOnNoneBoldItalic            ctermfg=7    ctermbg=none cterm=bold,italic
hi WhiteOnNoneBoldReverse           ctermfg=7    ctermbg=none cterm=bold,reverse
hi WhiteOnNoneItalic                ctermfg=7    ctermbg=none cterm=italic
hi WhiteOnNoneUnderline             ctermfg=7    ctermbg=none cterm=underline
hi WhiteOnBlack                     ctermfg=7    ctermbg=0    cterm=none
hi WhiteOnBlackItalic               ctermfg=7    ctermbg=0    cterm=italic
hi WhiteOnRed                       ctermfg=7    ctermbg=1    cterm=none
hi WhiteOnRedBold                   ctermfg=7    ctermbg=1    cterm=bold
hi WhiteOnGreen                     ctermfg=7    ctermbg=2    cterm=none
hi WhiteOnGreenBold                 ctermfg=7    ctermbg=2    cterm=bold
hi WhiteOnYellow                    ctermfg=7    ctermbg=3    cterm=none
hi WhiteOnBlue                      ctermfg=7    ctermbg=4    cterm=none
hi WhiteOnBlueBold                  ctermfg=7    ctermbg=4    cterm=bold
hi WhiteOnMagenta                   ctermfg=7    ctermbg=5    cterm=none
hi WhiteOnWhite                     ctermfg=7    ctermbg=7    cterm=none
hi WhiteOnBrightBlack               ctermfg=7    ctermbg=8    cterm=none
hi WhiteOnBrightBlackItalic         ctermfg=7    ctermbg=8    cterm=italic
hi WhiteOnBrightGreen               ctermfg=7    ctermbg=10   cterm=none
hi WhiteOnBrightBlue                ctermfg=7    ctermbg=12   cterm=none
hi BrightBlackOnNone                ctermfg=8    ctermbg=none cterm=none
hi BrightBlackOnNoneItalic          ctermfg=8    ctermbg=none cterm=italic
hi BrightBlackOnNoneItalicUnderline ctermfg=8    ctermbg=none cterm=italic,underline
hi BrightBlackOnBlackItalic         ctermfg=8    ctermbg=0    cterm=italic
hi BrightBlackOnYellow              ctermfg=8    ctermbg=3    cterm=none
hi BrightBlackOnWhite               ctermfg=8    ctermbg=7    cterm=none
hi BrightBlackOnWhiteBold           ctermfg=8    ctermbg=7    cterm=bold
hi BrightBlackOnWhiteItalic         ctermfg=8    ctermbg=7    cterm=italic
hi BrightBlackOnBrightBlack         ctermfg=8    ctermbg=8    cterm=none
