return {
  "neovim/nvim-lspconfig",
  opts = {
    -- make sure mason installs the server
    servers = {
      vtsls = {
        settings = {
          -- complete_function_calls = true,
          typescript = {
            tsserver = {
              maxTsServerMemory = 6144,
              -- useSeparateSyntaxServer = false,
              -- useSyntaxServer = "never",
            },
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = true,
              importModuleSpecifier = "non-relative",
            },
          },
        },
      },
      jdtls = {},
      setup = {
        jdtls = function()
          return true -- avoid duplicate servers
        end,
      },
    },
  },
}
