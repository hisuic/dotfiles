-- https://github.com/LazyVim/LazyVim/discussions/116
return {
  "tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
	  transparent = true,
	  styles = {
		sidebars = "transparent",
		floats = "transparent",
	  },
    }
  end,
}
