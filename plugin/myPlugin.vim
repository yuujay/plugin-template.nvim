fun! MyPlugin()
    " Sets the load path to nil so that when vim reloads the plugins it picks
    " up the changes
    lua for k in pairs(package.loaded) do if k:match("^your%-first-%plugin") then package.loaded[k] = nil end end
    lua require("your-first-plugin").helloWorld()
    lua for k in pairs(package.loaded) do if k:match("^testplugin") then package.loaded[k] = nil end end
    lua require("testplugin").helloWorld()
endfun

let g:my_variable = 7

augroup MyPlugin
    autocmd!
augroup END

" Creating your custom keybinding for the plugin
nnoremap <Plug>MyPlugin :call MyPlugin()<CR>
nmap <leader>cc <Plug>MyPlugin

" Creating your own custom vim command
command Myplugin :call MyPlugin()
