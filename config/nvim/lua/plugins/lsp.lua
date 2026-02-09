return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
	  library = {
	    -- See the configuration section for more details
	    -- Load luvit types when the `vim.uv` word is found
	    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	  },
	},
      },
    },
    config = function()
      -- Optional: add/override settings for lua_ls
      vim.lsp.config("lua_ls", { })
      -- Start/enable the server (activates for its filetypes)
      vim.lsp.enable("lua_ls")
    end,
  },
}
