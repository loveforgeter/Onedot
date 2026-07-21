local map = vim.keymap.set

vim.api.nvim_create_user_command("TrimTrailingSpace", function()
  local view = vim.fn.winsaveview()
  vim.cmd("silent keepjumps %s/\\s\\+$//e")
  vim.fn.winrestview(view)
end, {})

vim.api.nvim_create_user_command("SudoSave", function()
  vim.cmd("w !sudo tee % > /dev/null")
end, {})

local function visual_selection(direction)
  local saved_register = vim.fn.getreg('"')
  local saved_register_type = vim.fn.getregtype('"')
  vim.cmd.normal({ args = { "gv\"y" }, bang = true })

  local pattern = vim.fn.escape(vim.fn.getreg('"'), "\\/.*$^~[]")
  pattern = pattern:gsub("\n$", "")

  if direction == "backward" then
    vim.fn.search(pattern, "b")
  else
    vim.fn.search(pattern)
  end

  vim.fn.setreg('/', pattern)
  vim.fn.setreg('"', saved_register, saved_register_type)
end

map("i", "jj", "<Esc>")
map("v", "*", function()
  visual_selection("forward")
end, { silent = true })
map("v", "#", function()
  visual_selection("backward")
end, { silent = true })

map({ "n", "v", "o" }, "j", "gj")
map({ "n", "v", "o" }, "k", "gk")
map({ "n", "v", "o" }, "<Space>", "/")
map({ "n", "v", "o" }, "<C-Space>", "?")
map("n", "<leader><leader>", "<cmd>nohlsearch<cr>", { silent = true })

map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")

map("n", "<M-j>", "mz:m+<cr>`z")
map("n", "<M-k>", "mz:m-2<cr>`z")
map("v", "<M-j>", ":m '>+<cr>`<my`>mzgv`yo`z")
map("v", "<M-k>", ":m '<-2<cr>`>my`<mzgv`yo`z")

if vim.fn.has("mac") == 1 or vim.fn.has("macunix") == 1 then
  map({ "n", "v" }, "∆", "<M-j>")
  map({ "n", "v" }, "˚", "<M-k>")
end

map("c", "<C-A>", "<Home>")
map("c", "<C-E>", "<End>")
map("c", "<C-K>", "<C-U>")
map("c", "<C-P>", "<Up>")
map("c", "<C-N>", "<Down>")

map("n", "<leader>q", "<cmd>quit<cr>")
map("n", "<leader>x", "<cmd>xit<cr>")
map("n", "<leader>w", "<cmd>write<cr>")

map("n", "<leader>tn", "<cmd>tabnew<cr>")
map("n", "<leader>to", "<cmd>tabonly<cr>")
map("n", "<leader>tc", "<cmd>tabclose<cr>")
map("n", "<leader>tm", ":tabmove ")
map("n", "<leader>t<leader>", "<cmd>tabnext<cr>")

map("n", "<leader>bn", "<cmd>bnext<cr>")
map("n", "<leader>bp", "<cmd>bprevious<cr>")
map("n", "<leader>bc", "<cmd>bdelete<cr>")

map("n", "<leader>p", "<cmd>Files<cr>", { silent = true })
map("n", "<leader>b", "<cmd>Buffers<cr>", { silent = true })
map("n", "<leader>h", "<cmd>History<cr>", { silent = true })

map("n", "<Enter>", "o")
map("n", "<Backspace>", "i<Backspace>")
map("n", "<leader>a", "ggvG")
map("v", ">", ">gv")
map("v", "<", "<gv")
map("n", "Y", "y$")
map("v", "<Backspace>", "d")
map("n", "<F8>", "<cmd>Autoformat<cr>")
map("n", "<F9>", "<cmd>write<cr>")
map("n", "<F12>", ":!")

map("c", "trims", "TrimTrailingSpace")
map("c", "w!", "SudoSave")
