import TransformedText from "./components/TransformedText"
import TransformDebugger from "./components/TransformDebugger"

import TextTransforms from "./TextTransforms"

tag App
  def setup
    @text = "Happy New Year 2020!"
    @debug = false

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

      if @debug
        <h2>
          "Debug"
        for map in TextTransforms
          <TransformDebugger map=map>

      <h2>
        "Fancy"
      for map in TextTransforms
        <TransformedText map=map text=@text>

Imba.mount <App>
