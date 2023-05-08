local example = {
  ---@param name string
  hello = function(name) print('Hello, ' .. name .. '!') end
}

example.hello('world')

return example

