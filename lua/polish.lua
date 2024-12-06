-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

-- não instalou o Treesitter ledger automaticamente, instalei com :TSInstall ledger
-- o commentário do ledger não estava funcionando, fiz um autocmd para o tipo do ledger (.journal)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ledger" },
  command = "setlocal commentstring=;%s",
})

--vim better whitespaces
vim.g.better_whitespace_enabled = 0 -- desabilitei porque não gosto do vermelho, prefiro do jeito do kickstart
vim.g.strip_whitespace_on_save = 1 -- esse aqui só funciona setando na marra, não consegui usando meu comando :AutoFormatEnableTrailing

vim.opt.spelllang = { "en", "br", "pt_br" }
