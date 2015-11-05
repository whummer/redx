redis = require('redis')
config = require('config')
library = require('library')
inspect = require('inspect')
socket = require('socket')
plugins = { }
for i, plugin in ipairs(config.plugins) do
  local name, param = nil, nil
  if type(plugin) == 'string' then
    name = plugin
  else
    name, param = plugin[1], plugin[2]
  end
  local require_string = "return require('" .. name .. "')"
  library.log("Loading plugin: " .. name)
  plugins[i] = {
    name = name,
    param = param,
    plugin = loadstring(require_string)
  }
end
return math.randomseed(socket.gettime() * 1000)
