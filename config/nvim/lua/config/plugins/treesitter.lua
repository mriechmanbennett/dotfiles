return {
    {
      'nvim-treesitter/nvim-treesitter',
      enabled = false,
      lazy = false,
      build = ':TSUpdate',
      --[[require'nvim-treesitter'.setup {
        -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
        install_dir = vim.fn.stdpath('data') .. '/site'
      },]]--
      --[[
      require'nvim-treesitter'.install {
	  'bash',
	  'c',
	  'diff',
	  'git_config',
	  'git_rebase',
	  'html',
	  'ini',
	  'javascript',
	  'json',
	  'jsonc',
	  'lua',
	  'luadoc',
	  'luap',
	  'make',
	  'markdown',
	  'markdown_inline',
	  'powershell',
	  'printf',
	  'python',
	  'query',
	  'regex',
	  'rust',
	  'ssh_config',
	  'toml',
	  'typescript',
	  'vim',
	  'vimdoc',
	  'xml',
	  'yaml'
      }]]--
    }
}
