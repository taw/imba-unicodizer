tag Unicodizer
  prop map
  prop text

  def render
    <self>
      <div>
        @map.apply(@text)

export default Unicodizer
