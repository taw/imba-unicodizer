import TextTransform from "./TextTransform"

let TextTransforms = [
  TextTransform.new(
    "White Circles",
    [
      ["a", "z", "ⓐ"],
      ["A", "Z", "Ⓐ"],
      ["0", "0", "⓪"],
      ["1", "9", "①"],
    ]
  ),
  TextTransform.new(
    "Black Circles",
    [
      ["a", "z", "🅐"],
      ["A", "Z", "🅐"],
      ["1", "9", "❶"],
      ["0", "0", "⓿"],
    ]
  ),
  TextTransform.new(
    "Math bold",
    [
      ["A", "Z", "𝐀"],
      ["a", "z", "𝐚"],
      ["0", "9", "𝟎"],
    ]
  ),
  TextTransform.new(
    "Math bold Fraktur",
    [
      ["a", "z", "𝖆"],
      ["A", "Z", "𝕬"],
    ]
  ),
  TextTransform.new(
    "Math bold italic",
    [
      ["A", "Z", "𝑨"],
      ["a", "z", "𝒂"],
    ]
  ),
  TextTransform.new(
    "Math bold script",
    [
      ["A", "Z", "𝓐"],
      ["a", "z", "𝓪"],
    ]
  ),
  TextTransform.new(
    "Math sans bold",
    [
      ["A", "Z", "𝗔"], # A is invisible but B..Z work?
      ["a", "z", "𝗮"],
      ["0", "9", "𝟬"],
    ]
  ),
  TextTransform.new(
    "Math sans bold italic",
    [
      ["A", "Z", "𝘼"],
      ["a", "z", "𝙖"],
    ]
  ),
  TextTransform.new(
    "Math sans",
    [
      ["A", "Z", "𝖠"],
      ["a", "z", "𝖺"],
    ]
  ),
  TextTransform.new(
    "Math sans italic",
    [
      ["A", "Z", "𝘈"],
      ["a", "z", "𝘢"],
    ]
  ),
  TextTransform.new(
    "Math monospace",
    [
      ["A", "Z", "𝙰"],
      ["a", "z", "𝚊"],
      ["0", "9", "𝟶"],
    ]
  ),
  TextTransform.new(
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
  TextTransform.new(
    "Parenthesized",
    [
      ["A", "Z", "🄐"],
      ["a", "z", "⒜"],
      ["1", "9", "⑴"], # No zero
    ]
  ),
  TextTransform.new(
    "Squared",
    [
      ["A", "Z", "🄰"],
      ["a", "z", "🄰"],
    ]
  ),
  TextTransform.new(
    "Negative Squared",
    [
      ["A", "Z", "🅰"],
      ["a", "z", "🅰"],
    ]
  ),
  TextTransform.new(
    "Fullwidth",
    [
      ["A", "Z", "Ａ"],
      ["a", "z", "ａ"],
      ["0", "9", "０"],
      ["!", "!", "！"],
      ["\"", "\"", "＂"],
      ["#", "#", "＃"],
      ["$", "$", "＄"],
      ["%", "%", "％"],
      ["&", "&", "＆"],
      ["'", "'", "＇"],
      ["(", "(", "（"],
      [")", ")", "）"],
      ["*", "*", "＊"],
      ["+", "+", "＋"],
      [",", ",", "，"],
      ["-", "-", "－"],
      [".", ".", "．"],
      ["/", "/", "／"],
      [":", ":", "："],
      [";", ";", "；"],
      ["<", "<", "＜"],
      ["=", "=", "＝"],
      [">", ">", "＞"],
      ["?", "?", "？"],
      ["@", "@", "＠"],
      ["[", "[", "［"],
      ["\\", "\\", "＼"],
      ["]", "]", "］"],
      ["^", "^", "＾"],
      ["_", "_", "＿"],
      ["`", "`", "｀"],
      ["\{", "\{", "｛"],
      ["|", "|", "｜"],
      ["}", "}", "｝"],
      ["~", "~", "～"],
    ]
  )
]

export default TextTransforms
