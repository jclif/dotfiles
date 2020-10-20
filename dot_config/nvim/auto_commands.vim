" Remove trailing whitespace
autocmd FileType javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

" General auto-commands
autocmd FileType * setlocal colorcolumn=0
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" HTML configurations
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab colorcolumn=80

" Markdown
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

autocmd BufRead,BufNewFile {Vagrantfile,Guardfile,Gemfile,Rakefile,Capfile,*.rake,config.ru}      set ft=ruby
autocmd BufRead,BufNewFile {*.coffee.erb}                                                         set ft=coffee
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown}                                                set ft=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG}                                                       set ft=gitcommit
autocmd BufRead,BufNewFile {*.json}                                                               set ft=javascript
