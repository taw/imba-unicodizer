let punycode = require("punycode")
let ucs2 = punycode:ucs2

class TextTransform
  def initialize(name, map_data)
    @name = name
    @cmap = compile_map(map_data)

  get name
    @name

  def compile_map(map_data)
    let result = {}
    for group in map_data
      let target_start = ucs2:decode(group[0])[0]
      let source_start = ucs2:decode(group[1])[0]
      let source_end = ucs2:decode(group[2] || group[1])[0]
      for i in [ source_start .. source_end ]
        let j = target_start - source_start + i
        result[i] = j
    result

  def apply(text)
    let result = []
    let utext = ucs2:decode(text)
    for c in utext
      if @cmap[c]
        result.push(@cmap[c])
      else
        result.push(c)
    ucs2:encode(result)

  get debug
    let keys = Object.keys(@cmap)
    keys.sort do |a, b|
      a - b
    let values = keys.map do |i|
      @cmap[i]
    ucs2:encode(values)

export default TextTransform
