return {
    {
        "nvim-mini/mini.move",
        version = '*',
        config = function()
            local move = require "mini.move"
            move.setup { }
        end
    }
}
