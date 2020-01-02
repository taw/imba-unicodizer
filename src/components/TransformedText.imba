tag TransformedText
  prop map
  prop text

  def render
    let transformed = @map.apply(@text)

    <self>
      if @text === transformed
        <div>
      else
        <b>
          map:name
        <div>
          transformed

export default TransformedText
