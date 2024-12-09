# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned.
# Valid decimal values for RGB are 0 - 255.
# Any values that fall out of that range must be rounded to the closest valid value

def rgb(r, g, b)
  r = [[r, 0].max, 255].min
  g = [[g, 0].max, 255].min
  b = [[b, 0].max, 255].min
  ('%02x%02x%02x' % [r, g, b]).upcase
end

def rgb_2(r, g, b)
  [r, g, b].map do |c|
    if c <= 0
      "00"
    elsif c > 255
      "FF"
    else
      c.to_s(16).upcase
    end
  end.join('')
end
