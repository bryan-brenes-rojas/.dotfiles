local fileNameConfig = {
  'filename',
  symbols = {
    modified = ' ●', -- Text to show when the file is modified.
    readonly = ' ', -- Text to show when the file is non-modifiable or readonly.
    unnamed = '[No Name]', -- Text to show for unnamed buffers.
  }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'coc-explorer' },
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'diff',
      {
        'diagnostics',
        sections = { 'error' },
      }
    },
    lualine_c = { fileNameConfig },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { fileNameConfig },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {},
    lualine_b = {
      {
        'tabs',
        mode = 0,
        tabs_color = {
          active = 'lualine_a_normal',
        }
      }
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'branch' },
    lualine_z = {}
  },
  extensions = {}
}
