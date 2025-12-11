return {
  'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  ft = { 'html', 'javascript', 'typescript', 'tsx', 'jsx', 'svelte', 'vue', 'xml' },
  config = function()
    require('nvim-ts-autotag').setup({
      -- Optional: customize the behavior
      filetypes = { 
        'html', 
        'xml', 
        'javascript', 
        'typescript', 
        'tsx', 
        'jsx', 
        'svelte', 
        'vue' 
      },
    })
  end
}

