-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  -- import/override with your plugins folder
}
