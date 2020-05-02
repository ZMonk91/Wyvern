
# Colors Class
class Colors

  @colors = {
    red: [244,67,54],
    pink: [233,30,99],
    purple: [156,39,176],
    deep_purple: [103,58,183],
    indigo: [63,81,181],
    blue: [33,150,243],
    light_blue: [3,169,244],
    cyan: [0,188,212],
    teal: [0,150,136],
    green: [76,175,80],
    light_green: [139,195,74],
    lime: [205,220,57],
    yellow: [255,235,59],
    amber: [255,193,7],
    orange: [255,152,0],
    deep_orange: [255,87,34],
    brown: [121,85,72],
    grey: [158,158,158],
    blue_grey: [96,125,139],
    white: [255,255,255],
    black: [0,0,0],
    dark_grey: [32,35,31],
    dark: [38,38,38],

    ### Material Palette
    background:[18,18,18],
    btn_bg: [29, 29, 29],
    btn_1: [34,34,34],
    btn_2: [36, 36, 36],
    primary: [0,144,129],
    border: [90, 90, 90],
    secondary: [187, 134, 252]
  }

  @material_dark = {
    bg: [38,38,38]
  }

  def self.get_color(color)
    @colors[color]
  end

  def self.get_rgb(color)
    color = @colors.fetch(color.to_sym)
    color = color.chars.each_slice(2).map(&:join) # => Workaround for the lack of regexp
    color.each_with_index { |x, index| color[index] = x.to_i(16) }
  end
end
