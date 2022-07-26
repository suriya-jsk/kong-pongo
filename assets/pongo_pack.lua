#!/usr/bin/env luajit

-- This script will do a "luarocks pack" on every .rockspec
-- file available in the /kong-plugin directory

local dir = require("pl.dir")
local rockspecs = dir.getfiles("/kong-plugin/", "*.rockspec")
for _, filename in ipairs(rockspecs) do
  local rockname = filename:match("([^/]+)%-[%d%.%a]+%-%d+%.rockspec")
  os.execute(("cd /kong-plugin && luarocks make %s && luarocks pack %s"):format(filename, rockname))
end
