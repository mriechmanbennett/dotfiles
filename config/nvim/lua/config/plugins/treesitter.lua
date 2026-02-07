return {
    {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate',
      opts = {
	  ensure_installed = {
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
          }
      }
    }
}
