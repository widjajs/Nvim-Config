-- ~/.config/nvim/lua/plugins/conform.lua
return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- Define formatters for specific file types
      formatters_by_ft = {
        lua = { "stylua" }, -- Use stylua for Lua files
        javascript = { "prettier" }, -- Use Prettier for JavaScript
        typescript = { "prettier" }, -- Use Prettier for TypeScript
        html = { "prettier" }, -- Use Prettier for HTML
        css = { "prettier" }, -- Use Prettier for CSS
        json = { "prettier" }, -- Use Prettier for JSON
        c = { "clang_format" }, -- Use clang-format for C files
        python = { "ruff" }, -- Use ruff for Python file
        java = { "clang_format" }, -- Use clang-format for Java files
      },

      -- Customize formatter options
      formatters = {
        prettier = {
          prepend_args = { "--single-quote", "--print-width=80" }, -- Prettier options
        },
        stylua = {
          prepend_args = { "--indent-width", "2" }, -- StyLua options
        },
        clang_format = {
          prepend_args = { "--style={BasedOnStyle: LLVM, ColumnLimit: 80, IndentWidth: 2}" }, -- clang-format options
        },
      },
    },
  },
}
