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
    elsif 
  
  class TriangleError < StandardError
  end
  
end
