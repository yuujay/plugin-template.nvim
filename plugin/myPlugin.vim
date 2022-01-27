fun! MyPlugin()
    " Sets the load path to nil so that when vim reloads the plugins it picks
    " up the changes
    lua for k in pairs(package.loaded) do if k:match("^your%-first-%plugin") then package.loaded[k] = nil end end
    lua require("your-first-plugin").helloWorld()
    lua for k in pairs(package.loaded) do if k:match("^testplugin") then package.loaded[k] = nil end end
    lua require("testplugin").helloWorld()
endfun

augroup MyPlugin
    autocmd!
augroup END
