return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter.config").setup({
	auto_install = false,
	sync_install = false,
	highlight = {
	  enable = true,
	  disable = function(lang, buf)
	    local max_filesize = 100 * 1024 -- 100 KB
	    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
	    if ok and stats and stats.size > max_filesize then
	      return true
	    end
	  end,
	  additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
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
	},
      })
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
    end,
  }
}
