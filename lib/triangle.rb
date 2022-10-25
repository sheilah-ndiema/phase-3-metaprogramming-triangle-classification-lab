class Triangle
  attr_accessor :x,:y,:z
  # write code here
  def initialize(x,y,z)
      @x=x
      @y=y
      @z=z
  end
  def kind
    if(x <= 0) || (y <= 0) || (z <= 0) || (x+y<=z) || (y+z<=x) || (x+z<=y)
      raise TriangleError
      elsif(x ==y && x ==z && y==z)
      :equilateral
      
      elsif(x ==z && x!=y)|| (x==y && x!=z) ||( x!= y && y==z ) || (x==y && x!= z)
      :isosceles

      else
      :scalene
    end
  end
      class TriangleError < StandardError
  end
end


