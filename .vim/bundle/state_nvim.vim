if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/taiki/.vim/init.vim', '/home/taiki/.vim/rc/dein.toml', '/home/taiki/.vim/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/taiki/.vim/bundle'
let g:dein#_runtime_path = '/home/taiki/.vim/bundle/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/taiki/.vim/bundle/.cache/init.vim'
let &runtimepath = '/home/taiki/.config/nvim,/etc/xdg/nvim,/home/taiki/.local/share/nvim/site,/usr/local/share/nvim/site,/home/taiki/.vim/bundle/repos/github.com/elzr/vim-json,/home/taiki/.vim/bundle/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/share/nvim/runtime,/home/taiki/.vim/bundle/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/taiki/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/taiki/.config/nvim/after,/home/taiki/.vim/bundle/repos/github.com/Shougo/dein.vim'
filetype off
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* PP call dein#autoload#_on_cmd('PP', 'vim-prettyprint', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* PrettyPrint call dein#autoload#_on_cmd('PrettyPrint', 'vim-prettyprint', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Fontzoom call dein#autoload#_on_cmd('Fontzoom', 'vim-fontzoom', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! nnoremap <unique><silent> <Plug>(fontzoom- :call dein#autoload#_on_map('<lt>Plug>(fontzoom-', 'vim-fontzoom','n')<CR>
silent! xnoremap <unique><silent> <Plug>(fontzoom- :call dein#autoload#_on_map('<lt>Plug>(fontzoom-', 'vim-fontzoom','x')<CR>
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neocomplete.vim'])
