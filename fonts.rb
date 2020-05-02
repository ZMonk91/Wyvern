# frozen_string_literal: true
  @fonts = {
    button: '/app/wyvern/fonts/Raleway-Medium.ttf',
    body: '/app/wyvern/fonts/Raleway-Regular.ttf',
    headline: '/app/wyvern/fonts/Roboto-Light.ttf',
    subtitle: '/app/wyvern/fonts/Roboto-Regular.ttf',
    runes: '/app/wyvern/fonts/runes.ttf'
  }
# Fonts
class Fonts
  attr_sprite

  @@fonts = {
    button: '/app/wyvern/fonts/Raleway-Medium.ttf',
    body: '/app/wyvern/fonts/Raleway-Regular.ttf',
    headline: '/app/wyvern/fonts/Roboto-Light.ttf',
    subtitle: '/app/wyvern/fonts/Roboto-Regular.ttf',
    runes: '/app/wyvern/fonts/runes.ttf'
  }

  def initialize
    @font_style = ''
    @position = [500, 500]
    @size = 3
    @color = [150,150,150]
    @alpha = 255
    @alignment = 1
    @text = 'DEFAULT TEXT'
  end

  def size(arg)
    @size = arg
    self
  end
  
  def alpha(arg)
    @alpha = arg
    self
  end

  def alignment(arg)
    @alignment = arg
    self
  end


  def position(pos)
    @position = pos
    self
  end

  def get_font(style)
    @@fonts[style]
  end

  def font_style(style)
    @font_style = @@fonts[style]
    self
  end

  def text(string)
      @text = string
      self
  end

  def color(color)
    @color = Colors.get_color(color)
    self
  end

  def self.get_font(font)
    @fonts[font]
    self
  end

  def compile
    @result = [
      @position[0], @position[1],
      @text,
      @size,
      @alignment,
      @color[0], @color[1], @color[2],
      @alpha, @font_style
    ]
  @result
  end

  def render
    @result = compile
    labels << @result.to_a
    self
  end

end
