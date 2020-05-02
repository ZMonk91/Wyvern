
# Borders
class Borders

  def self.get_border(shape,border_info)
    border_info.flatten!

    border = []
    border << shape[0] #=> x_pos
    border << shape[1] #=> y_pos
    border << shape[2] #=> Width
    border << shape[3] #=> Height
    border << border_info[1] #=> Red
    border << border_info[2] #=> Green
    border << border_info[3] #=> Blue
    border << border_info[4] #=> Alpha
     border
  end

end