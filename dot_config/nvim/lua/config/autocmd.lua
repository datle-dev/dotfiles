local function augroup(name)
  return vim.api.nvim_create_augroup("dle_autocmd_" .. name, { clear = true})
end

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

