local set = require("lixaft.core.operator").set

local function system_yank(lines, info)
  local text = table.concat(lines, "\n")

  if info.type == "line" or info.linewise then
    text = text .. "\n"
  end

  vim.fn.setreg("+", text)
  return lines
end
set("gy", system_yank)
set("gyy", system_yank, { linewise = true })
