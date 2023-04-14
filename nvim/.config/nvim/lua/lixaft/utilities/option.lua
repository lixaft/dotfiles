local M = {}

function M.add(key, value, group)
  vim[group or "opt"][key] = value
end

function M.setup(options)
  for key, value in pairs(options) do
    M.add(key, value)
  end
end

return M
