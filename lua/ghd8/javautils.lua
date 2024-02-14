local M = {}

function M.insertJavaTemplate()
    local filepath = vim.fn.expand("%")
    local filename = vim.fn.expand("%:t")

    local dir = filepath:gsub("^.*[/\\]src[/\\](%a+)[/\\]java[/\\]", ""):gsub("[/\\]" .. filename .. "$", ""):gsub("[/\\]", ".")

    local package_declaration = "package " .. dir .. ";"
    local class_name = filename:gsub("%.java$", "")
    local class_structure = "public class " .. class_name .. " {"

    vim.fn.append(0, package_declaration)
    vim.fn.append(1, "")
    vim.fn.append(2, class_structure)
    vim.fn.append(3, "")
    vim.fn.append(4, "}")
end

return M

