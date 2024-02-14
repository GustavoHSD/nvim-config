
-- Define a Lua function to insert the package declaration and class structure
--[[
local function insertJavaPackage()
    -- Get the current buffer's file path
    local filename = vim.fn.expand("%")
    -- Extract the package name from the file path
    local dir = filename:gsub("%.java$", ""):gsub("^.*[/\\]src[/\\]", ""):gsub("[/\\]", ".")
    -- Construct the package declaration
    local package_declaration = "package " .. dir .. ";"
    -- Insert the package declaration at the beginning of the buffer
    vim.fn.append(0, package_declaration)
    -- Insert blank line
    vim.fn.append(1, "")
    -- Extract the class name from the file path
    local class_name = filename:gsub("^.*[/\\]", ""):gsub("%.java$", "")
    -- Construct the class structure
    local class_structure = "public class " .. class_name .. " {"
    -- Insert the class structure
    vim.fn.append(2, class_structure)
    -- Insert blank line
    vim.fn.append(3, "")
    -- Insert closing brace for the class
    vim.fn.append(4, "}")
end

insertJavaPackage()
--]]
-- Set up the autocmd event in Lua
-- vim.cmd("autocmd BufNewFile *.java lua insertJavaPackage()")
