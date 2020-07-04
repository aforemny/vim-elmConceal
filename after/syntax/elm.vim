if exists('g:no_elm_conceal') || !has('conceal') || &encoding != 'utf-8'
    finish
endif

syntax match Operator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syntax match Operator "->" conceal cchar=→

syntax match Operator "==" conceal cchar=≡
syntax match Operator "\/=" conceal cchar=≠
syntax match Operator "<=\ze[^<]" conceal cchar=≤
syntax match Operator ">=\ze[^>]" conceal cchar=≥

syntax match Operator "\<sqrt\>" conceal cchar=√
syntax match Operator "\<pi\>" conceal cchar=π

syntax match Operator "||\ze[[:alpha:][:space:]_([]" conceal cchar=∨
syntax match Operator "&&\ze[[:alpha:][:space:]_([]" conceal cchar=∧
syntax match Operator "\<not\>" conceal cchar=¬

syntax match Operator "\:\:" conceal cchar=∷
syntax match Operator "++" conceal cchar=⧺

syntax match Operator ">>" conceal cchar=»
syntax match Operator "<<" conceal cchar=«

syntax match Operator "|>" conceal cchar=▷
syntax match Operator "<|" conceal cchar=◁

highlight! link Conceal Operator
setlocal conceallevel=2
