return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-p>'] = cmp.mapping.scroll_docs(-1),
          ['<C-n>'] = cmp.mapping.scroll_docs(1),
          ['<C-y>'] = cmp.mapping.confirm({select = true}),
        }),
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
      })
    end
  }
