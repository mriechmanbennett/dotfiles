return {
  {
    "mason-org/mason.nvim",
    opts = {
      -- The directory in which to install packages.
      -- install_root_dir = path.concat { vim.fn.stdpath "data", "mason" },
      PATH = "prepend",
      log_level = vim.log.levels.INFO,
      max_concurrent_installers = 4,
      registries = {
	"github:mason-org/mason-registry",
      },
      providers = {
	"mason.providers.registry-api",
	"mason.providers.client",
      },
    }
  }
}
