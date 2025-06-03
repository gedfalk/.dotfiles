--- Not completely sure... it's like some additional plugin options I cannot put in ~/.dotfiles/nvim/.config/nvim/lua/plugins

---

-- For example, although I have these themes in .../plugins folder, they wouldn't work by themselves, if i don't activate them here
-- Set default colorscheme
vim.cmd.colorscheme('catppuccin') 

-- Change colorscheme for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.cmd.colorscheme('tokyonight')
  end,
})


-- And this is fix for render-markdown, because it throws some mistakes on my treesitter
-- And also header color are all grey, and I need to set them manually
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.treesitter.start()
  end,
})

