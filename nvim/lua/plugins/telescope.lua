return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function() 
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fn', function()
            local file = vim.fn.input('New file: ')
            if file ~= '' then
              vim.cmd('edit ' .. file)
            end

        end, { desc = 'Create a new file'})
  end
}
