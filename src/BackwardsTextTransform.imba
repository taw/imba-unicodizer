let punycode = require("punycode")
let ucs2 = punycode:ucs2
import TextTransform from "./TextTransform"

class BackwardsTextTransform < TextTransform
  def apply(text)
    let result = []
    let utext = ucs2:decode(text)
    for c in utext
      if @cmap[c]
        result.push(@cmap[c])
      else
        result.push(c)
    result.reverse()
    ucs2:encode(result)

  get debug
    let keys = Object.keys(@cmap)
    keys.sort do |a, b|
      a - b
    let values = keys.map do |i|
      @cmap[i]
    values.reverse()
    ucs2:encode(values)

export default BackwardsTextTransform
