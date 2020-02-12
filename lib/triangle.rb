require 'pry'

class Triangle
  #attr_accessor :triangle, :side, :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind()
    if (@a <= 0 || @b<= 0 || @c <= 0)
      raise TriangleError
    elsif (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a)
      raise TriangleError 
    else 
      if (@a != @b) && (@b != @c) && (@a != @c)
        :scalene
      elsif (@a == @b) || (@b == @c) || (@a == @c)
        :isosceles
      elsif (@a == @b) && (@b == @c) && (@a == @c)
        :equilateral
      end
    end
  end
  
  class TriangleError < StandardError
  end
  
end
