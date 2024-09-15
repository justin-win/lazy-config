require('mini.indentscope').setup{
  draw = {
    delay = 100,
    priority = 2,
    animation = function(s, n)
      return s/n*20
    end,
  },
 }
