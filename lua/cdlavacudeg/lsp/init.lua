local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("cdlavacudeg.lsp.lsp-signature")
require("cdlavacudeg.lsp.lsp-installer")
require("cdlavacudeg.lsp.handlers").setup()
require("cdlavacudeg.lsp.null-ls")
