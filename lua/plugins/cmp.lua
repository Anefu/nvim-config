return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- Ensure the window table exists
    opts.window = opts.window or {}
    opts.window.documentation = {
      max_width = 80,
      max_height = 20,
    }

    -- If needed, stop truncating the completion menu text:
    opts.formatting = opts.formatting or {}
    opts.formatting.fields = { "abbr", "kind", "menu" }
    opts.formatting.format = function(_, item)
      return item
    end

    return opts
  end,
}
