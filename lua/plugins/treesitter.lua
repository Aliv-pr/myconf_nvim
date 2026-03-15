return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config =  function()
    local ts = require("nvim-treesitter")

    ts.setup({
      install_dir = vim.fn.stdpath("data") .. "/site"
    })
    ts.install({ "lua", "javascript" })

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args) 
        local buf = args.buf
        pcall(vim.treesitter.start, buf)
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'
        vim.opt.foldlevel = 99
        vim.opt.foldlevelstart = 99
      end
    })
  end
}
