# frozen_string_literal: true

# Assigns shapes to sprites
class Shapes
  @shapes = {
    circle: '/app/wyvern/sprites/circle.png',
    hexagon: '/app/wyvern/sprites/hexagon.png',
    pentagon: '/app/wyvern/sprites/pentagon.png',
    pill: '/app/wyvern/sprites/pill.png',
    rectangle_rounded: '/app/wyvern/sprites/rectangle_rounded.png',
    rectangle: '/app/wyvern/sprites/rectangle.png',
    square_rounded: '/app/wyvern/sprites/square_rounded.png',
    square: '/app/wyvern/sprites/square.png',
    star: '/app/wyvern/sprites/star.png',
    triangle_rounded: '/app/wyvern/sprites/triangle_rounded.png',
    triangle: '/app/wyvern/sprites/triangle.png'
  }
  def self.get_shape(name)
    @shapes[name]
  end
  
end

@trees = {
  normal: '/app/wyvern/sprites/game/wc/normal_tree.png'
}