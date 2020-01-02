let punycode = require("punycode")
let ucs2 = punycode:ucs2

let def compile_map(map)
  let result = {}
  for group in map
    let source_start = ucs2:decode(group[0])[0]
    let source_end = ucs2:decode(group[1])[0]
    let target_start = ucs2:decode(group[2])[0]
    for i in [ source_start .. source_end ]
      let j = target_start - source_start + i
      result[i] = j
  result

tag Unicodizer
  prop map
  prop text

  def converted_text
    let cmap = compile_map(@map)
    let result = []
    let utext = ucs2:decode(@text)
    for c in utext
      if cmap[c]
        result.push(cmap[c])
      else
        result.push(c)
    ucs2:encode(result)

  def render
    <self>
      <div>
        converted_text

let white_circles = [
  ["a", "z", "ⓐ"],
  ["A", "Z", "Ⓐ"],
  ["0", "0", "⓪"],
  ["1", "9", "①"],
]

let black_circles = [
  ["a", "z", "🅐"],
  ["A", "Z", "🅐"],
  ["1", "9", "❶"],
  ["0", "0", "⓿"],
]

tag App
  def setup
    @text = "Happy New Year 2020!"

  def render
    <self>
      <header>
        "Unicodizer!"
      <p>
        "Type some text. Receive fancy Unicode versions."
      <input[@text]>

      <p>
        "Fancy:"

      <div>
        <b>
          "White Circles"
        <Unicodizer map=white_circles text=@text>

      <div>
        <b>
          "Black Circles"
        <Unicodizer map=black_circles text=@text>

Imba.mount <App>
