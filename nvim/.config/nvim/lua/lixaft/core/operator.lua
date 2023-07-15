local M = {}

M.__func = function(_, _) end

local function get_lines(type, start_pos, end_pos)
  local lines
  if type == "line" then
    lines = vim.api.nvim_buf_get_lines(0, start_pos[1] - 1, end_pos[1], false)
  elseif type == "char" then
    lines = vim.api.nvim_buf_get_text(
      0,
      start_pos[1] - 1,
      start_pos[2],
      end_pos[1] - 1,
      end_pos[2] + 1,
      {}
    )
  end
  return lines
end

local function set_lines(type, start_pos, end_pos, text)
  if type == "line" then
    vim.api.nvim_buf_set_lines(0, start_pos[1] - 1, end_pos[1], false, text)
  elseif type == "char" then
    vim.api.nvim_buf_set_text(
      0,
      start_pos[1] - 1,
      start_pos[2],
      end_pos[1] - 1,
      end_pos[2] + 1,
      text
    )
  end
end

local function set_operator_func(func, linewise)
  return function(type)
    local start_pos = vim.api.nvim_buf_get_mark(0, "[")
    local end_pos = vim.api.nvim_buf_get_mark(0, "]")

    local lines = get_lines(type, start_pos, end_pos)
    local info = {
      start_pos = start_pos,
      end_pos = end_pos,
      type = type,
      linewise = linewise,
    }

    local new_lines = func(lines, info)

    set_lines(type, start_pos, end_pos, new_lines)
  end
end

local function create_keymap_func(func, linewise)
  local prefix = ""
  local suffix = ""
  if linewise then
    prefix = "0"
    suffix = "g_"
  end

  return function()
    M.__func = set_operator_func(func, linewise)
    vim.go.operatorfunc = "v:lua.require'lixaft.core.operator'.__func"
    return prefix .. "g@" .. suffix
  end
end

function M.set(key, func, opts)
  opts = opts or {}
  local linewise = opts.linewise
  opts.linewise = nil

  vim.keymap.set("n", key, create_keymap_func(func, linewise), { expr = true })
end

return M
