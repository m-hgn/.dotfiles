local scheme = "default"

local ok, _ = pcall(vim.cmd, "colo " .. scheme)

if not ok then
  vim.notify(scheme .. " not found. Colorscheme not loaded.")
  return
end

