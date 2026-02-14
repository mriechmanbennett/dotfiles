return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Optional overrides for lua_ls (keep or expand)
      vim.lsp.config("lua_ls", {
	settings = {
	  Lua = {
	    diagnostics = {
	      globals = { "vim" }, -- explicitly suppress "undefined global vim"
	    },
	  },
	},
      })
      -- Optional: add/override settings for lua_ls
      --vim.lsp.config("powershell_es", { })
      -- Start/enable the server (activates for its filetypes)
      --vim.lsp.enable("powershell_es")
    end,
  },
}
