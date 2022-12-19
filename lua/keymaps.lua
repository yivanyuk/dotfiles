vim.g.mapleader = " "

function nmap(key, command)
vim.keymap.set("n", key,command)
end

function imap(key, command)
vim.keymap.set("i", key,command)
end

nmap("<leader>w", vim.cmd.w)
nmap("<leader>q", vim.cmd.q)
nmap("<leader><leader>", "<C-^>")
nmap("Q", "<nop>")
nmap("<leader>n", vim.cmd.Ex)
