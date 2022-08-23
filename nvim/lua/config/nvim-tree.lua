local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then
  return
end

nvim_tree.setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  update_cwd = true,   
  update_focused_file = {
      enable = true,
      update_cwd = false,
  },
  view = {
    adaptive_size = false,
    centralize_selection = false,
    width = 32,
    height = 30,
    hide_root_folder = false,
    side = "left",  
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = { 
    group_empty = true,
    icons = { 
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  }, 
    hijack_directories = {
    enable = true,
    auto_open = true,
  },
})

vim.api.nvim_set_keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
