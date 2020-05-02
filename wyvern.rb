# frozen_string_literal: true

# Fluid Interfaces
## Below are the necessary functions to create a Fluid Interface for for Wyvern

######################
#     SPRITE CLASS   #
#  Creates a Sprite  #
######################
class Sprite
  attr_sprite

  def initialize(type)
    @object = {
      type: type,
      position: [455, 450],
      size: [120, 120],
      sprite: '',
      tilt: 0,
      alpha: 255,
      color: [123, 123, 123],
      shadows: false,
      shadow_offset: [20, 20],
      shadow_spread: 10,
      shadow_color: [255, 255, 255],
      shadow_alpha: 0,
      shadow_tilt: 0,
      selectable: false
    }
    build_obj(type)
  end

  def build_obj(type)
    type = type.to_sym
    component = New_Component.new(type)
    component.position(@object[:position])
    component.size(@object[:size])
    component.tilt(@object[:tilt])
    component.alpha(@object[:alpha])
    component.color(@object[:color])
    @obj_info = component.update
    @get_render = component.render
    self
  end

  def render
    arr = @get_render.flatten
    arr
  end

  def position(*args)
    @object[:position] = args
    build_obj(@object[:type])
    self
  end

  def size(size)
    @object[:size] = size
    build_obj(@object[:type])
    self
  end

  def sprite(*args)
    @object[:sprite] = args
    build_obj(@object[:type])
    self
  end

  def tilt(tilt)
    @object[:tilt] = tilt
    build_obj(@object[:type])
    self
  end

  def alpha(alpha)
    @object[:alpha] = alpha
    build_obj(@object[:type])
    self
  end

  def color(color)
    color = Colors.get_color(color) if color.is_a? Symbol
    @object[:color] = color
    build_obj(@object[:type])
    self
  end

  ### Event Handling
  def hovered?(sprite)
    hover_listener(get_sprite_rect(sprite))
  end

  def clicked?(sprite)
    click_listener(get_sprite_rect(sprite))
  end

  def on_click(&block)
    @on_click_enabled = true
    block.call if clicked?(@obj_info)
    self
  end

  def on_hover(&block)
    block.call if hovered?(@obj_info)
    self
  end



  ### Error Handling
  def serialize
    {}
  end

  def inspect
    serialize.to_s
  end

  def serialize.to_s; end
end

####################
# Helper functions #
####################
def none
  false
end

def get_sprite_rect(sprite)
  x,y,width,height = sprite
  [x, y, ((width += x) - 1), ((height += y) - 1)]
end

def hover_listener(rect)
  true if mouse.x.between?(rect[0], rect[2]) &&
          mouse.y.between?(rect[1], rect[3])
end

def click_listener(rect)
  return unless mouse.click
  if mouse.x.between?(rect[0], rect[2]) &&
  mouse.y.between?(rect[1], rect[3])
    true
  end
end


class New_Component

  def initialize(type)
    @obj = []
    ### Default Values
    @position = [400, 400]
    @size = [50, 50]
    @object_sprite = Shapes.get_shape(type)
    @tilt = 0
    @alpha = 255
    @colors = [0, 255, 0]
    @obj_sto = {
      color: [122, 122, 122]
    }
  end

  def position(*args)
    @position = args
    update
  end

  def size(size)
    @size = size
    update
  end

  def tilt(tilt)
    @tilt = tilt
    update
  end

  def alpha(alpha)
    @alpha = alpha
    update
  end

  def color(*args)
    args = Colors.get_color(args) if args.is_a? Symbol
    @colors = args
    update
  end


  def render
    result = Array.new
    result.push(@position.flatten,
      @size[0], @size[1],
      @object_sprite,
      @tilt,
      @alpha,
      @colors.flatten)
    result
  end

  def update
    @obj = [
      @position.flatten,
      @size[0], @size[1],
      @object_sprite,
      @tilt,
      @alpha,
      @colors.flatten
    ]
    @obj.flatten
  end
end
