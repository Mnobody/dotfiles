local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('php', {
  s('php', {
    t({'<?php', '', 'declare(strict_types=1);', '', 'namespace ;', '', 'final class '}),
    i(1, 'ClassName'),
    t({'','{', '', '}'})
  })
})
