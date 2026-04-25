vim.lsp.config('ty', {
  settings = {
    ty = {
      ["unresolved-reference"] = "warn",
      configurationFile = "./.config/ty.toml"
    }
  }
})
