function! neoformat#formatters#java#enabled() abort
    return ['googleformat', 'astyle', 'prettierd', 'prettier']
endfunction

function! neoformat#formatters#java#astyle() abort
    return {
                \ 'exe': 'astyle',
                \ 'args': ['--mode=java'],
                \ 'stdin': 1,
                \ }
endfunction


function! neoformat#formatters#java#prettier() abort
    return {
                \ 'exe': 'prettier',
                \ 'args': ['--stdin-filepath', '"%:p"'],
                \ 'stdin': 1,
                \ }
endfunction


function! neoformat#formatters#java#prettierd() abort
    return {
                \ 'exe': 'prettierd',
                \ 'args': ['"%:p"'],
                \ 'stdin': 1,
                \ }
endfunction

function! neoformat#formatters#java#googleformat() abort
    return {
                \'exe':'java -jar ~/.local/share/nvim/site/pack/packer/start/neoformat/autoload/google-java-format-1.15.0-all-deps.jar --replace',
                \'stdin': 1,
                \}
endfunction
