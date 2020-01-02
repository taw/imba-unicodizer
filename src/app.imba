import Unicodizer from "./Unicodizer"
import CharacterMap from "./CharacterMap"
import MapDebug from "./MapDebug"

let maps = [
  CharacterMap.new(
    "White Circles",
    [
      ["a", "z", "ⓐ"],
      ["A", "Z", "Ⓐ"],
      ["0", "0", "⓪"],
      ["1", "9", "①"],
    ]
  ),
  CharacterMap.new(
    "Black Circles",
    [
      ["a", "z", "🅐"],
      ["A", "Z", "🅐"],
      ["1", "9", "❶"],
      ["0", "0", "⓿"],
    ]
  ),
  CharacterMap.new(
    "Math bold",
    [
      ["A", "Z", "𝐀"],
      ["a", "z", "𝐚"],
      ["0", "9", "𝟎"],
    ]
  ),
  CharacterMap.new(
    "Math bold Fraktur",
    [
      ["a", "z", "𝖆"],
      ["A", "Z", "𝕬"],
    ]
  ),
  CharacterMap.new(
    "Math bold italic",
    [
      ["A", "Z", "𝑨"],
      ["a", "z", "𝒂"],
    ]
  ),
  CharacterMap.new(
    "Math bold script",
    [
      ["A", "Z", "𝓐"],
      ["a", "z", "𝓪"],
    ]
  ),
  CharacterMap.new(
    "Math sans bold",
    [
      ["A", "Z", "𝗔"], # A is invisible but B..Z work?
      ["a", "z", "𝗮"],
      ["0", "9", "𝟬"],
    ]
  ),
  CharacterMap.new(
    "Math sans bold italic",
    [
      ["A", "Z", "𝘼"],
      ["a", "z", "𝙖"],
    ]
  ),
  CharacterMap.new(
    "Math sans",
    [
      ["A", "Z", "𝖠"],
      ["a", "z", "𝖺"],
    ]
  ),
  CharacterMap.new(
    "Math sans italic",
    [
      ["A", "Z", "𝘈"],
      ["a", "z", "𝘢"],
    ]
  ),
  CharacterMap.new(
    "Math monospace",
    [
      ["A", "Z", "𝙰"],
      ["a", "z", "𝚊"],
      ["0", "9", "𝟶"],
    ]
  ),
  CharacterMap.new(
    "Math double-struck",
    [
      ["A", "Z", "𝔸"],
      ["a", "z", "𝕒"],
      ["0", "9", "𝟘"],
      # There are gaps in astral plane for
      # exceptions for characters with MBP representations
      ["C", "C", "ℂ"],
      ["H", "H", "ℍ"],
      ["N", "N", "ℕ"],
      ["P", "P", "ℙ"],
      ["Q", "Q", "ℚ"],
      ["R", "R", "ℝ"],
      ["Z", "Z", "ℤ"],
    ]
  ),
  CharacterMap.new(
    "Parenthesized",
    [
      ["A", "Z", "🄐"],
      ["a", "z", "⒜"],
      ["1", "9", "⑴"], # No zero
    ]
  ),
  CharacterMap.new(
    "Squared",
    [
      ["A", "Z", "🄰"],
      ["a", "z", "🄰"],
    ]
  ),
  CharacterMap.new(
    "Negative Squared",
    [
      ["A", "Z", "🅰"],
      ["a", "z", "🅰"],
    ]
  ),
]

tag App
  def setup
    @text = "Happy New Year 2020!"
    @debug = true

  def render
    <self>
      <header>
        "Unicodizer!"
      <p>
        "Text goes in. Fancy Unicode goes out. Enjoy."
      <input[@text] type="text">
      <p>
        <label>
          "Debug mode"
          <input[@debug] type="checkbox">

      <p>
        "Fancy:"

      for map in maps
        <div.output>
          <b>
            map:name
          <Unicodizer map=map text=@text>

      if @debug
        <p>
          "Debug:"

        for map in maps
          <div.output>
            <b>
              map:name
            <MapDebug map=map>

Imba.mount <App>
