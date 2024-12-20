-- General Neovim Configuration
-- ============================

local set = vim.opt  -- General configuration
local wo = vim.wo  -- Window configuration
local bo = vim.bo  -- Buffer configuration

-- Map leader to spacebar
vim.g.mapleader = " "

-- Configure Python host
vim.g.python3_host_prog = '/usr/bin/python'

-- Allow termguicolors
vim.opt.termguicolors = true

-- Configure indentations
set.expandtab = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- Text wrap
set.wrap = true
set.breakindent = true
set.textwidth = 79

-- Configure format options
-- Find more about format options with :h fo-table (Neovim defaults to "tcqj")
set.formatoptions = {
  ["1"] = true, -- don't break a like after a one-letter word
  t = true,     -- auto-wrap text using textwidth
  c = true,     -- auto-wrap comments inserting comment leader automatically
  q = true,     -- format comments with "gq"
  j = true,     -- remove comment leader when joining lines
  r = true,     -- insert comment char after hitting enter in Insert mode
  o = false,    -- don't insert comment char on new line in Normal mode
  n = true,     -- recognize numbered lists when formatting text
}

-- Change configuration for cases
set.ignorecase = true
set.smartcase = true

-- Add colorcolumn
set.colorcolumn = "80"

-- Show relative line numbers
set.number = true
set.relativenumber = true

-- Add signcolumn
set.signcolumn = "yes"

-- Highlight cursorline
set.cursorline = true

-- Split new windows below and right (vsplit)
set.splitbelow = true
set.splitright = true

-- Disable folding
set.foldenable = false

-- Enable mouse interaction inside vim (only on Visual and Normal mode)
set.mouse = "vn"

-- Enable undo file
set.undofile = true

-- Set number of context lines when scrolling
set.scrolloff = 10

-- Use global statusline
set.laststatus = 3
