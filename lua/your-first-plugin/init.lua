
local function HelloWorld()
    print("Hello, World")
    -- This comes from `myPlugin.vim`
    print(vim.g["my_variable"])
end

return {
    helloWorld = HelloWorld
}
