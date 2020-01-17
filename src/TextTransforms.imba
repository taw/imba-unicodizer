import TextTransform from "./TextTransform"

let TextTransforms = [
  TextTransform.new(
    "White Circles",
    [
      ["ⓐ", "a", "z"],
      ["Ⓐ", "A", "Z"],
      ["⓪", "0", "0"],
      ["①", "1", "9"],
    ]
  ),
  TextTransform.new(
    "Black Circles",
    [
      ["🅐", "a", "z"],
      ["🅐", "A", "Z"],
      ["❶", "1", "9"],
      ["⓿", "0", "0"],
    ]
  ),
  TextTransform.new(
    "Math bold",
    [
      ["𝐀", "A", "Z"],
      ["𝐚", "a", "z"],
      ["𝟎", "0", "9"],
    ]
  ),
  TextTransform.new(
    "Math bold Fraktur",
    [
      ["𝖆", "a", "z"],
      ["𝕬", "A", "Z"],
    ]
  ),
  TextTransform.new(
    "Math bold italic",
    [
      ["𝑨", "A", "Z"],
      ["𝒂", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Math bold script",
    [
      ["𝓐", "A", "Z"],
      ["𝓪", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Math sans bold",
    [
      ["𝗔", "A", "Z"], # A is invisible but B..Z work?
      ["𝗮", "a", "z"],
      ["𝟬", "0", "9"],
    ]
  ),
  TextTransform.new(
    "Math sans bold italic",
    [
      ["𝘼", "A", "Z"],
      ["𝙖", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Math sans",
    [
      ["𝖠", "A", "Z"],
      ["𝖺", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Math sans italic",
    [
      ["𝘈", "A", "Z"],
      ["𝘢", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Math monospace",
    [
      ["𝙰", "A", "Z"],
      ["𝚊", "a", "z"],
      ["𝟶", "0", "9"],
    ]
  ),
  TextTransform.new(
    "Math double-struck",
    [
      ["𝔸", "A", "Z"],
      ["𝕒", "a", "z"],
      ["𝟘", "0", "9"],
      # There are gaps in astral plane for
      # exceptions for characters with MBP representations
      ["ℂ", "C"],
      ["ℍ", "H"],
      ["ℕ", "N"],
      ["ℙ", "P"],
      ["ℚ", "Q"],
      ["ℝ", "R"],
      ["ℤ", "Z"],
    ]
  ),
  TextTransform.new(
    "Parenthesized",
    [
      ["🄐", "A", "Z"],
      ["⒜", "a", "z"],
      ["⑴", "1", "9"], # No zero
    ]
  ),
  TextTransform.new(
    "Squared",
    [
      ["🄰", "A", "Z"],
      ["🄰", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Negative Squared",
    [
      ["🅰", "A", "Z"],
      ["🅰", "a", "z"],
    ]
  ),
  TextTransform.new(
    "Fullwidth",
    [
      ["Ａ", "A", "Z"],
      ["ａ", "a", "z"],
      ["０", "0", "9"],
      ["！", "!"],
      ["＂", "\""],
      ["＃", "#"],
      ["＄", "$"],
      ["％", "%"],
      ["＆", "&"],
      ["＇", "'"],
      ["（", "("],
      ["）", ")"],
      ["＊", "*"],
      ["＋", "+"],
      ["，", ","],
      ["－", "-"],
      ["．", "."],
      ["／", "/"],
      ["：", ":"],
      ["；", ";"],
      ["＜", "<"],
      ["＝", "="],
      ["＞", ">"],
      ["？", "?"],
      ["＠", "@"],
      ["［", "["],
      ["＼", "\\"],
      ["］", "]"],
      ["＾", "^"],
      ["＿", "_"],
      ["｀", "`"],
      ["｛", "\{"],
      ["｜", "|"],
      ["｝", "}"],
      ["～", "~"],
    ]
  )
]

export default TextTransforms
