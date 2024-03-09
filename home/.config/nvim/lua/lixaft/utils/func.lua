local M = {}

function M.partial(module, func, args)
    return function()
        require(module)[func](unpack(args or {}))
    end
end

return M
