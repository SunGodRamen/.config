local function source_project_init()
  local project_init_path = vim.fn.getcwd() .. "/.nvim/init.lua"

  if vim.fn.filereadable(project_init_path) == 1 then
    vim.cmd("source " .. project_init_path)
  end
end

source_project_init()