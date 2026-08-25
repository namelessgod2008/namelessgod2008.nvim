local has_nt, nt = pcall(require, 'nvim-treesitter')
if not has_nt then
  return
end

local lang_map = {
  python = "python",
  rust = "rust",
  go = "go",
  javascript = "javascript",
  typescript = "typescript",
  tsx = "tsx",
  html = "html",
  css = "css",
  cpp = "cpp",
  c = "c",
  bash = "bash",
  json = "json",
  yaml = "yaml",
  toml = "toml",
  java = "java",
  kotlin = "kotlin",
  sh = "bash",
  jsx = "jsx",
  xml = "xml",
}

local installing = {}

vim.api.nvim_create_autocmd("FileType", {
  pattern = vim.tbl_keys(lang_map),
  callback = function(ev)
    local ft = vim.bo[ev.buf].filetype
    local lang = lang_map[ft]
    if not lang then
      return
    end

    -- 已有解析器 → 直接启用
    local ok, _ = pcall(vim.treesitter.start, ev.buf, lang)
    if ok then
      return
    end

    if installing[lang] then
      return
    end

    installing[lang] = true
    vim.notify(
      string.format("[treesitter] 安装 '%s' 解析器中…", lang),
      vim.log.levels.INFO
    )

    -- force = true：即使 queries 符号链接存在也强制重新编译
    nt.install({ lang }, { force = true }):wait(300000)

    local ok2, err2 = pcall(vim.treesitter.start, ev.buf, lang)
    if ok2 then
      vim.notify(
        string.format("[treesitter] '%s' 安装完成 ✓", lang),
        vim.log.levels.INFO
      )
    else
      vim.notify(
        string.format("[treesitter] '%s' 安装失败: %s", lang, tostring(err2)),
        vim.log.levels.ERROR
      )
    end

    installing[lang] = nil
  end,
})
