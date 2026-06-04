return {
    {
        "nvim-mini/mini.hipatterns",
        version = '*',
        config = function()
            local hipatterns = require "mini.hipatterns"
            hipatterns.setup {
                highlighters = {
                    -- Highlight standalone 'TODO', 'NOTE'
                    todo_uppercase = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
                    todo_lowercase = { pattern = '%f[%w]()todo()%f[%W]', group = 'MiniHipatternsTodo' },

                    note_uppercase = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
                    note_lowercase = { pattern = '%f[%w]()note()%f[%W]', group = 'MiniHipatternsNote' },

                    -- Highlight hex color strings (`#rrggbb`) using that color
                    hex_color = hipatterns.gen_highlighter.hex_color(),
                },
            }
        end
    }
}
