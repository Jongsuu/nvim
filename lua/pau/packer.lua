-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'folke/tokyonight.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                           , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter', tag = 'v0.9.0', run = ':TSUpdate'
    }
    use('nvim-treesitter/playground')
    use("nvim-treesitter/nvim-treesitter-context")

    -- Primeagen
    use('theprimeagen/harpoon')
    use('theprimeagen/vim-be-good')

    -- Vim Actions per Minute
    use('aldevv/vim-apm')

    -- Keeps track of all the changes in the file
    use('mbbill/undotree')

    -- Git integrations
    use('tpope/vim-fugitive')

    -- Git Signs: shows deleted lines, new lines...
    use('lewis6991/gitsigns.nvim')

    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })

    -- Bottom bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- LSP pretty list for showing diagnostics, references...
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
            }
        end
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Debugging
    use('mfussenegger/nvim-dap')
    use('rcarriga/nvim-dap-ui')
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')
end)
