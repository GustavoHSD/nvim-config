local M = {}
-- Define a Lua function to insert the package declaration and class structure

function M.insertJavaPackage()
    -- Get the current buffer's file path
    local filepath = vim.fn.expand("%")
    local filename = vim.fn.expand("%:t")
    -- Extract the package name from the file path
    local dir = filepath:gsub("^.*[/\\]src[/\\](%a+)[/\\]java[/\\]", ""):gsub("[/\\]" .. filename .. "$", ""):gsub("[/\\]", ".")
    -- Construct the package declaration
    local package_declaration = "package " .. dir .. ";"
    -- Insert the package declaration at the beginning of the buffer
    vim.fn.append(0, package_declaration)
    -- Insert blank line
    vim.fn.append(1, "")
    -- Extract the class name from the file path
    local class_name = filename:gsub("^.*[/\\]", ""):gsub("%.java$", "") -- Construct the class structure
    local class_structure = "public class " .. class_name .. " {"
    -- Insert the class structure
    vim.fn.append(2, class_structure)
    -- Insert blank line
    vim.fn.append(3, "")
    -- Insert closing brace for the class
    vim.fn.append(4, "}")
end

return M
-- Set up the autocmd event in Lua
-- vim.cmd("autocmd BufNewFile *.java lua insertJavaPackage()")
