vim.lsp.config('basedpyright', {
  on_attach = function (client, _)
		-- these will be executed whenever cursor moving / typing.
		-- client.server_capabilities.completionProvider        = false -- use pyrefly for fast response
		-- client.server_capabilities.documentHighlightProvider = false -- use pyrefly for fast response
		-- client.server_capabilities.documentSymbolProvider    = false -- use pyrefly for fast response
		-- client.server_capabilities.semanticTokensProvider    = false -- use pyrefly it is more rich

		-- formatting to ruff
		client.server_capabilities.documentFormattingProvider = false -- use ruff
		client.server_capabilities.documentRangeFormattingProvider = false -- use ruff

		-- client.server_capabilities.definitionProvider        = false -- use pyrefly for fast response
		-- client.server_capabilities.declarationProvider        = false -- use pyrefly for fast response
		-- client.server_capabilities.typeDefinitionProvider    = false -- use pyrefly
		-- client.server_capabilities.renameProvider            = false -- use pyrefly as I think it is stable
	end,
  settings = {
    disableOrganizeImports = true, -- use ruff instead of it
			analysis = {
				autoImportCompletions = true,
				autoSearchPaths = true, -- auto serach command paths like 'src'
				diagnosticMode = 'openFilesOnly',
				useLibraryCodeForTypes = true,
				diagnosticSeverityOverrides = {
					reportUnknownMemberType = 'none', -- ignore warning : cannot infer member type of object like matplot
					reportUnusedCallResult = 'none', -- ignore warning : If we don't use result of function, it must add '_ = '  in front of statement
				},
				exclude = {
					'**/.venv',
					'**/venv',
					'**/__pycache__',
					'**/dist',
					'**/build'
				}
			}
    }
  }
)
