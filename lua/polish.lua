-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local autosave_group = vim.api.nvim_create_augroup("auto_save_on_focus_lost", { clear = true })

local function save_modified_file_buffers()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if
      vim.api.nvim_buf_is_loaded(buf)
      and vim.bo[buf].modified
      and vim.bo[buf].modifiable
      and vim.bo[buf].buftype == ""
      and not vim.bo[buf].readonly
      and vim.api.nvim_buf_get_name(buf) ~= ""
    then
      vim.api.nvim_buf_call(buf, function() vim.cmd "silent update" end)
    end
  end
end

vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "VimLeavePre" }, {
  group = autosave_group,
  callback = save_modified_file_buffers,
})
