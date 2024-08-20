return {
  --projectfinder
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  dependencies = { {'nvim-lua/plenary.nvim'} }
},
--icons
'kyazdani42/nvim-web-devicons',

--oil nvim
{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
},

--colorscheme
{ "rose-pine/neovim", name = "rose-pine" },

 --colorscheme
 'folke/tokyonight.nvim',

 --text highlighter
 'nvim-treesitter/nvim-treesitter',

 --telescope
"sopa0/telescope-makefile",

 --colorscheme
 'rebelot/kanagawa.nvim',

 --plugin window viewer
 'nvim-treesitter/playground',
 'theprimeagen/harpoon',

 --undotree plugin
 'mbbill/undotree',

 --git plugin
 'tpope/vim-fugitive',

 --lsp
 'williamboman/mason.nvim',
 {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
},
--Comments
 {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
 },
--autoclose tags
'windwp/nvim-ts-autotag',
--auto pair
{
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
},

--snippets
"rafamadriz/friendly-snippets",
--snippet dependency
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},

--obsidian.nvim
{
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },

    -- see below for full list of options 👇
  },
},

--img clip nvim | Used for obsidian
"HakonHarnes/img-clip.nvim",

--nerdfont
{'glepnir/nerdicons.nvim', cmd = 'NerdIcons', config = function() require('nerdicons').setup({}) end},

--lualine status line
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
},
--colorscheme
 "ellisonleao/gruvbox.nvim" ,
{ "catppuccin/nvim", as = "catppuccin" },
 "craftzdog/solarized-osaka.nvim" ,

--multi line
 "mg979/vim-visual-multi" ,
-- surround bracket shortcut
{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
--jdtls
'mfussenegger/nvim-jdtls',
--tmux navigator
'christoomey/vim-tmux-navigator',
'alexghergh/nvim-tmux-navigation',
--tab lines
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
'romgrk/barbar.nvim',
--snipe.nvim

{
  "leath-dub/snipe.nvim",
  keys = {
    {"gb", function () require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu"}
  },
  opts = {}
},
}
