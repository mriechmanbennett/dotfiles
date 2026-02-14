return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
	"lua_ls",
	"pyright",
	"bashls",
	"yamlls",
	"jsonls",
	"markdown_oxide",
	"texlab",
	"docker_compose_language_service",
	"terraformls",
	"ansiblels",
	"csharp_ls",
	"html",
	"powershell_es"
      },
      automatic_enable = {
	"lua_ls",
	"pyright",
	"bashls",
	"yamlls",
	"jsonls",
	"markdown_oxide",
	"texlab",
	"docker_compose_language_service",
	"terraformls",
	"ansiblels",
	"csharp_ls",
	"html"
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
