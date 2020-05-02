# Wyvern
A custom UI Framework for DragonRuby. It utilizes a Fluid Interface design (similar to Javascript). 

# Installation
1.  Drop the wyvern folder inside of `mygame/app/` 
2. Add `require /app/wyvern/index.rb` to the top of your `main.rb` file

## Example
Here's an example file to begin:
```ruby 
# Main.rb
require '/app/wyvern/index.rb'

def render_sample
  bg = Sprite.new(:rectangle)
  bg.size([1280, 720])
    .color(:blue)
    .position([0, 0])
    .alpha(255)

  shape_1 = Sprite.new(:circle)
  shape_1.size([55, 55])
         .color(:green)
         .position([5, 600])
         .on_hover { shape_1.color(:red) }
         .on_click { shape_1.color(:black) }
  shape_2 = Sprite.new(:hexagon)
  shape_2.size([55, 55])
         .color(:green)
         .position([80, 600])
         .on_hover { shape_2.color(:red) }
         .on_click { shape_2.color(:black) }
  shape_3 = Sprite.new(:pentagon)
  shape_3.size([55, 55])
         .color(:green)
         .position([140, 600])
         .on_hover { shape_3.color(:red) }
         .on_click { shape_3.color(:black) }
  shape_4 = Sprite.new(:pill)
  shape_4.size([155, 55])
         .color(:green)
         .position([300, 600])
         .on_hover { shape_4.color(:red) }
         .on_click { shape_4.color(:black) }
  shape_5 = Sprite.new(:rectangle_rounded)
  shape_5.size([155, 55])
         .color(:green)
         .position([300, 500])
         .on_hover { shape_5.color(:red) }
         .on_click { shape_5.color(:black) }
  shape_6 = Sprite.new(:rectangle)
  shape_6.size([155, 55])
         .color(:green)
         .position([300, 400])
         .on_hover { shape_6.color(:red) }
         .on_click { shape_6.color(:black) }
  shape_7 = Sprite.new(:square)
  shape_7.size([55, 55])
         .color(:green)
         .position([500, 600])
         .on_hover { shape_7.color(:red) }
         .on_click { shape_7.color(:black) }
  shape_8 = Sprite.new(:square_rounded)
  shape_8.size([55, 55])
         .color(:green)
         .position([500, 500])
         .on_hover { shape_8.color(:red) }
         .on_click { shape_8.color(:black) }
  shape_9 = Sprite.new(:star)
  shape_9.size([55, 55])
         .color(:green)
         .position([600, 600])
         .on_hover { shape_9.color(:red) }
         .on_click { shape_9.color(:black) }
  shape_10 = Sprite.new(:triangle_rounded)
  shape_10.size([55, 55])
          .color(:green)
          .position([700, 600])
          .on_hover { shape_10.color(:red) }
          .on_click { shape_10.color(:black) }
  shape_11 = Sprite.new(:triangle)
  shape_11.size([55, 55])
          .color(:green)
          .position([800, 600])
          .on_hover { shape_11.color(:red) }
          .on_click { shape_11.color(:black) }

  sprites << bg.render
  sprites << shape_1.render
  sprites << shape_2.render
  sprites << shape_3.render
  sprites << shape_4.render
  sprites << shape_5.render
  sprites << shape_6.render
  sprites << shape_7.render
  sprites << shape_8.render
  sprites << shape_9.render
  sprites << shape_10.render
  sprites << shape_11.render
end

def tick( args)
  rende_sample
end

def labels
  $gtk.args.outputs.labels
end

def state
  $gtk.args.state
end

def inputs
  $gtk.args.inputs
end

def outputs
  $gtk.args.outputs
end

def sprites
  $gtk.args.outputs.sprites
end

def mouse
  $gtk.args.inputs.mouse
end

def args
  $gtk.args
end
