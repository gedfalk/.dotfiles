vim.opt.number = true                   -- enable line numbers
vim.opt.tabstop = 4                     -- number of spaces in <Tab>
vim.opt.shiftwidth = 4                  -- size of an indent
vim.opt.expandtab = true                -- use spaces instead of tabs
vim.opt.clipboard = "unnamedplus"       -- use system clipboard
vim.opt.ignorecase = true               -- ignore case while searching

vim.opt.scrolloff = 8                   -- scrolling 8 lines before edge
vim.opt.sidescrolloff = 8               -- same, but horizontally

vim.opt.termguicolors = true

-- switch layout to default english in visual mode
-- TODO: add numbers and capital letters, except "Ж:"
vim.opt.langmap = "ё`,йq,цw,уe,кr,еt,нy,гu,шk,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рi,оh,лj,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,,ю.,./,Ж:"

-- vim.opt.colorcolumn = '80'           TODO: change color
-- vim.opt.cursorline = true            TODO: is it customizable            
