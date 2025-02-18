return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        'sainnhe/everforest',
        as = 'everforest',
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},


            -- Autocompletion

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'saadparwaiz1/cmp_luasnip'},


            {'rafamadriz/friendly-snippets'},
            {'L3MON4D3/LuaSnip'},
        }
    }

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
})
end)
