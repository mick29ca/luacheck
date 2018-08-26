package = "luacheck"
version = "dev-1"
source = {
   url = "git+https://github.com/mpeterv/luacheck.git"
}
description = {
   summary = "A static analyzer and a linter for Lua",
   detailed = [[
Luacheck is a command-line tool for linting and static analysis of Lua code. It is able to spot usage of undefined global variables, unused local variables and a few other typical problems within Lua programs.
]],
   homepage = "https://github.com/mpeterv/luacheck",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "argparse >= 0.6.0",
   "luafilesystem >= 1.6.3"
}
build = {
   type = "builtin",
   modules = {
      luacheck = "src/luacheck/init.lua",
      ["luacheck.builtin_standards"] = "src/luacheck/builtin_standards.lua",
      ["luacheck.cache"] = "src/luacheck/cache.lua",
      ["luacheck.check"] = "src/luacheck/check.lua",
      ["luacheck.check_state"] = "src/luacheck/check_state.lua",
      ["luacheck.config"] = "src/luacheck/config.lua",
      ["luacheck.core_utils"] = "src/luacheck/core_utils.lua",
      ["luacheck.expand_rockspec"] = "src/luacheck/expand_rockspec.lua",
      ["luacheck.filter"] = "src/luacheck/filter.lua",
      ["luacheck.format"] = "src/luacheck/format.lua",
      ["luacheck.fs"] = "src/luacheck/fs.lua",
      ["luacheck.globbing"] = "src/luacheck/globbing.lua",
      ["luacheck.inline_options"] = "src/luacheck/inline_options.lua",
      ["luacheck.lexer"] = "src/luacheck/lexer.lua",
      ["luacheck.lfs_fs"] = "src/luacheck/lfs_fs.lua",
      ["luacheck.love_standard"] = "src/luacheck/love_standard.lua",
      ["luacheck.lua_fs"] = "src/luacheck/lua_fs.lua",
      ["luacheck.main"] = "src/luacheck/main.lua",
      ["luacheck.multithreading"] = "src/luacheck/multithreading.lua",
      ["luacheck.ngx_standard"] = "src/luacheck/ngx_standard.lua",
      ["luacheck.options"] = "src/luacheck/options.lua",
      ["luacheck.parser"] = "src/luacheck/parser.lua",
      ["luacheck.runner"] = "src/luacheck/runner.lua",
      ["luacheck.stages"] = "src/luacheck/stages.lua",
      ["luacheck.stages.detect_bad_whitespace"] = "src/luacheck/stages/detect_bad_whitespace.lua",
      ["luacheck.stages.detect_cyclomatic_complexity"] = "src/luacheck/stages/detect_cyclomatic_complexity.lua",
      ["luacheck.stages.detect_empty_statements"] = "src/luacheck/stages/detect_empty_statements.lua",
      ["luacheck.stages.detect_globals"] = "src/luacheck/stages/detect_globals.lua",
      ["luacheck.stages.detect_uninit_accesses"] = "src/luacheck/stages/detect_uninit_accesses.lua",
      ["luacheck.stages.detect_unreachable_code"] = "src/luacheck/stages/detect_unreachable_code.lua",
      ["luacheck.stages.detect_unused_locals"] = "src/luacheck/stages/detect_unused_locals.lua",
      ["luacheck.stages.linearize"] = "src/luacheck/stages/linearize.lua",
      ["luacheck.stages.name_functions"] = "src/luacheck/stages/name_functions.lua",
      ["luacheck.stages.parse"] = "src/luacheck/stages/parse.lua",
      ["luacheck.stages.resolve_locals"] = "src/luacheck/stages/resolve_locals.lua",
      ["luacheck.standards"] = "src/luacheck/standards.lua",
      ["luacheck.utils"] = "src/luacheck/utils.lua",
      ["luacheck.version"] = "src/luacheck/version.lua"
   },
   install = {
      bin = {
         luacheck = "bin/luacheck.lua"
      }
   }
}
