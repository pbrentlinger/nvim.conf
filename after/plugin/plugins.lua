-- Only define once
if not require'lspconfig.configs'.hdl_checker then
  require'lspconfig.configs'.hdl_checker = {
    default_config = {
    cmd = {"hdl_checker", "--lsp", };
    filetypes = {"hdl", "vhdl", "verilog", "systemverilog"};
      root_dir = function(fname)
        -- will look for the .hdl_checker.config file in parent directory, a
        -- .git directory, or else use the current directory, in that order.
        local util = require'lspconfig'.util
        return util.root_pattern('.hdl_checker.config')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
      end;
      settings = {};
    };
  }
end

require'lspconfig'.hdl_checker.setup{}

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          -- ["bem.enabled"] = true,
        },
      },
    }
})
