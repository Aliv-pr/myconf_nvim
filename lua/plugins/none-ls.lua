return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    local b = null_ls.builtins

    null_ls.setup({
      sources = {
        -- formating
        b.formatting.stylua,
        b.formatting.rubocop,
        b.formatting.prettier,
        b.formatting.black,
        b.formatting.isort,

        -- diagnostics
        b.diagnostics.rubocop,
        require("none-ls.code_actions.eslint"),

        -- completion
        b.completion.spell,
      },
    })
    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Format file" })
  end,
}
