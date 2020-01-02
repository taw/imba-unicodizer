tag TransformDebugger
  prop map

  def render
    let text = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    <self>
      <div>
        @map.apply(text)

export default TransformDebugger
