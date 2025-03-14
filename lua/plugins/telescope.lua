return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    require("telescope").setup({
        extensions = {
          ['ui-select'] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>ps', function()
          builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end)
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
      require("telescope").load_extension("ui-select")
    end
   }
}
